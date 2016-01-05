@echo off&setlocal
call %~dp0_eco\_ecosystem-init.bat
title %~0
echo launching: %~0

call %eco_run_w% -r _launch-maya.bat -t base,maya-shotfinder,mayaportable,