@echo off&setlocal
call %~dp0init-launcher.bat
title %~0
echo launching: %~0

call %eco_run% -r cmd -t base,dev,altus