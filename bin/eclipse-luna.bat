@echo off&setlocal
call %~dp0init-launcher.bat
title %~0
call %eco_run% -r eclipse-launch.bat -t eclipse-luna,base,dev
exit