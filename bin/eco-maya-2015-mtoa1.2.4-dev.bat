@echo off&setlocal
call %~dp0init-launcher.bat
title %~0
call %pythonw_exe% %ECO_ROOT%\bin\ecosystem.py -r maya -t maya2015,mayaportable,beta,base,mtoa1.2.4