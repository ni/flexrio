:: userhdlbuild=visible
@echo off

for /f "tokens=3" %%v in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v "PROCESSOR_ARCHITECTURE"') do set "PROCESSOR_ARCHITECTURE=%%v"

if %PROCESSOR_ARCHITECTURE%==AMD64 set OSBit=64
if %PROCESSOR_ARCHITECTURE%==EM64T set OSBit=64
if not "%OSBit%" == "64" (
	echo You cannot open this project in the Vivado Design Suite on a 32-bit OS. You must use a 64-bit OS to open this project in the Vivado Design Suite.
	pause
	exit
)

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
