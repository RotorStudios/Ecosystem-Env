@echo off&setlocal
call %~dp0_eco\_ecosystem-init.bat
title %~0
echo launching: %~0

call %eco_run% -r launch-eclipse.bat -t base,dev,eclipse-luna,maya,mayaportable,deadline