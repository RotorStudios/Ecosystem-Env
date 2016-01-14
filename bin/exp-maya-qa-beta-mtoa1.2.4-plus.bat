@echo off&setlocal
call %~dp0_eco\_ecosystem-init.bat
title %~0
echo launching: %~0

call %eco_run_w% -r launch-maya.bat -t base,maya,mayaportable,beta,mtoa1.2.4,alShaders