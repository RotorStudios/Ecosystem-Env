@echo off&setlocal
call %~dp0init-launcher.bat
title %~0
call %eco_run_w% -r maya -t base,maya-shotfinder,alpha