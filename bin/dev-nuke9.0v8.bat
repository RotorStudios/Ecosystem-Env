@echo off&setlocal
call %~dp0_eco\_ecosystem-init.bat
title %~0
echo launching: %~0

call %eco_run_w% -r _launch-nuke.bat -t base,nuke9.0v8,dev,deadline