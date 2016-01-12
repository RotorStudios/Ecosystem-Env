@echo off&setlocal
call %~dp0_eco\_ecosystem-init.bat
call _ecosystem-cli-aliases.bat
call _ecosystem-cli-intro.bat
title eco-system
set "PROMPT=(eco) %PROMPT%"

cmd /K "cd /D %~dp0"