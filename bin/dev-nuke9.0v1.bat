@echo off&setlocal
call %~dp0_eco\_ecosystem-init.bat
title %~0
echo launching: %~0

call %eco_run_w% -r launch-nuke.bat -t base,nuke9.0v1,dev,deadline