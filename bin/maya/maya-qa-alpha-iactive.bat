pythonw_exe@echo off&setlocal
call %~dp0init-launcher.bat
title %~0
call %eco_run_w% -r maya -t base,maya2015,mayaportable,alpha,dept-iactive