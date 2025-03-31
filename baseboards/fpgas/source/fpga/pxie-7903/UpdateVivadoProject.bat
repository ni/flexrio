:: userhdlbuild=visible
:: @echo off

python createvivadoprojecttcl.py
if %errorlevel% neq 0 (
    echo Error occurred in createvivadoprojecttcl.py. Exiting.
    exit /b %errorlevel%
)

cd VivadoProject
call "C:\NIFPGA\programs\Vivado2021_1\bin\vivado" MySasquatchProj.xpr -mode tcl -source ..\TCL\UpdateProject.tcl
cd..
