@echo off&setlocal
call %~dp0_eco\_ecosystem-init.bat
title %~0
echo launching: %~0

call %eco_run_w% -r mayapy -t maya2015,dev,base