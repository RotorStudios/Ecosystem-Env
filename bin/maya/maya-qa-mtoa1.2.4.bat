@echo off&setlocal
call %~dp0init-launcher.bat
title %~0
call %eco_run_w% -r maya -t maya2015,mayaportable,beta,base,mtoa1.2.4