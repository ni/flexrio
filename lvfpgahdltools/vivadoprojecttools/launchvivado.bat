:: githubvisible=true
@echo off

for /f "tokens=3" %%v in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v "PROCESSOR_ARCHITECTURE"') do set "PROCESSOR_ARCHITECTURE=%%v"

pushd "%~dp0"
setlocal enabledelayedexpansion
set configFileName=vivadoprojectsettings.ini
if exist "%configFileName%" (
  for /f "tokens=1,2 delims==" %%x in ('findstr /r /c:"^VivadoProjectName=" %configFileName%') do set "VivadoProjectName=%%y"
  for /f "tokens=1,2 delims==" %%x in ('findstr /r /c:"^VivadoToolsPath=" %configFileName%') do set "VivadoToolsPath=%%y"
  cd /d "VivadoProject"
  start "" "!VivadoToolsPath!\bin\vivado.bat" !VivadoProjectName!.xpr
  if errorlevel 1 ( 
    echo[
    echo The batch file failed to launch the Vivado Design Suite.
    echo[
    pause
  )
  ) else (
  echo Couldn't find !cd!\%configFileName%. 
  echo[
  pause
)
popd
