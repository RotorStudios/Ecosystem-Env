@echo off&setlocal
call %~dp0_eco\_ecosystem-init.bat
title %~0
echo launching: %~0

call %eco_run_w% -r __launch-maya.bat -t base,maya2015,mayaportable,beta,mtoa1.2.5,altus