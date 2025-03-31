:: userhdlbuild=visible
:: @echo off


cd VivadoProject
call "C:\NIFPGA\programs\Vivado2021_1\bin\vivado" -mode tcl -source ..\TCL\BuildProject.tcl
cd..
