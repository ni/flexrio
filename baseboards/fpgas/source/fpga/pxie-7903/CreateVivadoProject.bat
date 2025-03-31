:: userhdlbuild=visible
:: @echo off

python createvivadoprojecttcl.py
if %errorlevel% neq 0 (
    echo Error occurred in createvivadoprojecttcl.py. Exiting.
    exit /b %errorlevel%
)

setlocal enabledelayedexpansion
set configFileName=VivadoProjectSettings.ini
for /f "tokens=1,2 delims==" %%x in ('findstr /r /c:"^VivadoToolsPath=" %configFileName%') do set "VivadoToolsPath=%%y"

cd VivadoProject
call "!VivadoToolsPath!\bin\vivado.bat" -mode tcl -source ..\TCL\ProjectSetup.tcl
cd..

