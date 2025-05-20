:: githubvisible=true
@echo off

REM Path to the projectsettings.ini file
set CONFIG_FILE=projectsettings.ini

REM Check if the configuration file exists
if not exist "%CONFIG_FILE%" (
    echo ERROR: Configuration file "%CONFIG_FILE%" not found.
    exit /b 1
)

REM Read the VivadoToolsPath setting from the configuration file
for /f "tokens=1,2 delims==" %%A in ('findstr /r "^VivadoToolsPath=" "%CONFIG_FILE%"') do (
    set "XILINX=%%B"
)

REM Check if the XILINX variable was set
if not defined XILINX (
    echo ERROR: VivadoToolsPath not found in "%CONFIG_FILE%".
    exit /b 1
)

REM Add tools to the PATH
set "VIVADO_PROJECT_TOOLS=..\..\lvfpgahdltools\tools"
set "PATH=%PATH%;%VIVADO_PROJECT_TOOLS%"

REM Print the XILINX variable for confirmation
echo XILINX is set to "%XILINX%"
echo PATH is updated to include "%VIVADO_PROJECT_TOOLS%"

REM Initialize git submodules
echo Initializing git submodules...
git submodule update --init --recursive
