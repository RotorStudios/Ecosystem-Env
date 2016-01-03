@echo off&setlocal
call %~dp0_eco\_ecosystem-init.bat
pause
call %~dp0_eco\_ecosystem-cli-aliases.bat
pause
call %~dp0_eco\_ecosystem-cli-intro.bat
pause
title eco-system
set "PROMPT=(eco) %PROMPT%"

cmd /K "cd /D %~dp0"