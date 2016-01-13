@echo off

if exist "%ProgramW6432%\%NUKE_VERSION%\Nuke%NUKE_MAJOR_VERSION%" (
	set NUKE_BASE=%ProgramW6432%\%NUKE_VERSION%
	set NUKE_LOCATION=%NUKE_BASE%
	
	echo executing nuke from local install - %NUKE_LOCATION%
	echo.
)

set PATH=%PATH%;%NUKE_LOCATION%
echo %path%
echo.
start Nuke%NUKE_MAJOR_VERSION%