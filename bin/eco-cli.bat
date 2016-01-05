@echo off&setlocal
call %~dp0_eco\_ecosystem-init.bat
call %~dp0_eco\_ecosystem-cli-aliases.bat
call %~dp0_eco\_ecosystem-cli-intro.bat
title eco-system
set "PROMPT=(eco) %PROMPT%"

cmd /K "cd /D %~dp0"