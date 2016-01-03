@echo off&setlocal
call %~dp0init-launcher.bat
title %~0
call %eco_run_w% -r __launch-maya.bat -t base,maya2015,mayaportable,devjc