# userhdlbuild=visible
import os
import shutil
import configparser
from collections import defaultdict

def list_all_files(folder_path):
    all_files = []
    for root, dirs, files in os.walk(folder_path):
        for file in files:
            if file.endswith('.vhd') or file.endswith('.xdc') or file.endswith('edf'):  # Only include .vhd, .xdc or .edf files
                all_files.append(fix_file_slashes(os.path.join(root, file)))
    return all_files

def remove_duplicates(file_list):
    return list(set(file_list))

def add_files_to_list(file_list, files):
    for file in files:
        file_list.append(file)  
    return file_list

def fix_file_slashes(path):
    return path.replace('\\', '/')

def remove_files_from_list(list_a, list_b):
    """
    Removes all files that are in list_b from list_a.

    :param list_a: List of files to be filtered.
    :param list_b: List of files to be removed from list_a.
    :return: A new list with files from list_b removed from list_a.
    """
    set_b = set(list_b)
    return [file for file in list_a if file not in set_b]

def remove_testbench_files(file_list):
    """
    Removes files from the list if they contain "_tb" or "testbench" in the path.

    :param file_list: List of files to be filtered.
    :return: A new list with testbench files removed.
    """
    return [file for file in file_list if "tb_" not in file.lower()]

def sort_file_list(file_list):
    """
    Sorts the file list in alphabetical order.

    :param file_list: List of files to be sorted.
    :return: A new list with files sorted in alphabetical order.
    """
    return sorted(file_list)

def get_vivado_project_files(config):
    include_folders = config.get('VivadoProjectFiles', 'IncludeFolders').split()
    exclude_folders = config.get('VivadoProjectFiles', 'ExcludeFolders').split()
    include_files = config.get('VivadoProjectFiles', 'IncludeFiles').split()
    exclude_files = config.get('VivadoProjectFiles', 'ExcludeFiles').split()

    #print("Include Folders:", include_folders)
    #print("Exclude Folders:", exclude_folders)
    #print("Include Files:", include_files)
    #print("Exclude Files:", exclude_files)

    include_folder_files = []
    for folder in include_folders:
        include_folder_files.extend(list_all_files(folder))

    exclude_folder_files = []
    for folder in exclude_folders:
        exclude_folder_files.extend(list_all_files(folder))    

    # initialize file list with files from included folders
    file_list = include_folder_files
    # remove files in exclude folders
    file_list = remove_files_from_list(file_list, exclude_folder_files)
    # add files in include files list
    file_list = add_files_to_list(file_list, include_files)
    # remove files in exclude files list
    file_list = remove_files_from_list(file_list, exclude_files)
    # remove testbench files
    file_list = remove_testbench_files(file_list)
    # remove duplicates of the exact same file path - this is OK because included file paths may overlap
    file_list = remove_duplicates(file_list)
    # Find and log duplicate file names - Cannot have multiple of the same file name - error if duplicates are found
    find_and_log_duplicates(file_list)  
    # Copy dependency files to the gathereddeps folder
    file_list = copy_deps_files(file_list)   
    # sort the file list
    file_list = sort_file_list(file_list)
  
    return file_list

def has_spaces(file_path):
    """
    Checks if the given file path contains spaces.

    :param file_path: The file path to check.
    :return: True if the file path contains spaces, False otherwise.
    """
    return ' ' in file_path

def get_TCL_add_files_text(file_list, new_file_path):
    # Compute relative paths and add quotes around file names with spaces
    replacement_list = [os.path.relpath(file, os.path.dirname(new_file_path)) for file in file_list]
   # replacement_list = file_list
    replacement_list = [f'"{file}"' if has_spaces(file) else file for file in replacement_list]

    # Concatenate files with text before and after
    replacement_text = '\n'.join([f'add_files {{{file}}}' for file in replacement_list])
    return replacement_text

def replace_placeholders_in_file(file_path, new_file_path, add_files, project_name, top_entity):
    with open(file_path, 'r') as file:
        file_contents = file.read()
    modified_contents = file_contents.replace('ADD_FILES', add_files)
    modified_contents = modified_contents.replace('PROJ_NAME', project_name)
    modified_contents = modified_contents.replace('TOP_ENTITY', top_entity)

    with open(new_file_path, 'w') as file:
        file.write(modified_contents)

def find_and_log_duplicates(file_list):
    """
    Finds duplicate file names in the file list and logs their full paths to a file.
    Returns an error if any duplicates are found.

    :param file_list: List of files to be checked for duplicates.
    """
    output_file_path = os.path.join(current_dir, 'duplicate_files.log')
    file_dict = defaultdict(list)
    duplicates_found = False

    for file in file_list:
        file_name = os.path.basename(file)
        file_dict[file_name].append(file)

    with open(output_file_path, 'w') as output_file:
        for file_name, paths in file_dict.items():
            if len(paths) > 1:
                duplicates_found = True
                output_file.write(f"Duplicate file: {file_name}\n")
                for path in paths:
                    output_file.write(f"  {path}\n")
                output_file.write("\n")

    if duplicates_found:
        raise ValueError("Duplicate files found. Check the log file for details.")

def copy_deps_files(file_list):
    """
    Copies files that have "userdeps" in the file path to the "objects/gathereddeps" folder.

    :param file_list: List of files to be copied.
    """
    target_folder = os.path.join(os.getcwd(), 'objects/gathereddeps')
    os.makedirs(target_folder, exist_ok=True)

    new_file_list = []
    for file in file_list:
        if '/userdeps/' in file:
            target_path = os.path.join(target_folder, os.path.basename(file))
            if os.path.exists(target_path):
                os.chmod(target_path, 0o777)  # Change the file permission to writable
            shutil.copy2(file, target_path)
            new_file_list.append(target_path)
           # print(f"Copied {file} to {target_path}")
        else:
            new_file_list.append(file)
    return new_file_list

if __name__ == "__main__":
    current_dir = os.getcwd()
    config_path = os.path.join(current_dir, 'VivadoProjectSettings.ini')
    template_path = os.path.join(current_dir, 'TCL/ProjectSetupTemplate.tcl')
    new_file_path = os.path.join(current_dir, 'TCL/ProjectSetup.tcl')    
    
    config = configparser.ConfigParser()
    config.read(config_path)
    
    file_list = get_vivado_project_files(config)
    add_files = get_TCL_add_files_text(file_list, new_file_path)

    project_name = config.get('VivadoProjectSettings', 'VivadoProjectName')
    top_entity = config.get('VivadoProjectSettings', 'TopLevelEntity')

    # Replace TOKENS in the template vivado project script
    replace_placeholders_in_file(template_path, new_file_path, add_files, project_name, top_entity)

    print(os.getcwd())