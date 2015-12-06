@echo off&setlocal
call %~dp0init-launcher.bat
title %~0
call %eco_run_w% -r eco-eclipse-luna-setup.bat -t eclipse-luna,base