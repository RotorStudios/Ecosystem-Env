@echo off&setlocal
call %~dp0init-launcher.bat
title %~0
call %eco_run% -r __eclipse-launch.bat -t eclipse-luna,base,dev,python2.7.9