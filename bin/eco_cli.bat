@echo off&setlocal
call %~dp0_ecosystem-init.bat
call %~dp0_ecosystem-cli-aliases.bat
call %~dp0_ecosystem-cli-intro.bat
title eco-system
set "PROMPT=(eco) %PROMPT%"
cmd