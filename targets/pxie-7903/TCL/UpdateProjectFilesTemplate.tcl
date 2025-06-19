# githubvisible=true

remove_files [get_files]

ADD_FILES

# constraints.xdc_template is for use for both synthesis and implementation
set_property used_in_synthesis true [get_files constraints.xdc_template]
set_property used_in_implementation true [get_files constraints.xdc_template]

# constraints_place.xdc is for use in implementation only
set_property used_in_synthesis false [get_files constraints_place.xdc]
set_property used_in_implementation true [get_files constraints_place.xdc]

exit