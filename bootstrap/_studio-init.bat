@ECHO OFF
echo.
echo  @%~0


set "RS_SW=S:\dev\_S\sw"
set "RS_DEV_HOME=S:\dev\_S\dev-area\home"
set "RS_USER_HOME=T:\users\%USERNAME%"
set "RS_USER_DEV_HOME=%RS_DEV_HOME%\%USERNAME%"
set "VIRTUAL_ENV=%RS_SW%\apps\python\py2.7.11-win64"


call :check_path RS_SW  %RS_SW%
call :check_path RS_USER_HOME  %RS_USER_HOME%
call :check_path RS_DEV_HOME  %RS_DEV_HOME%
call :check_path virtual_env/script  %VIRTUAL_ENV%\Scripts\activate.bat
call :check_path chocolatey  %RS_SW%\chocolatey\bin

set "PATH=%PATH%;%RS_SW%\chocolatey\bin"
set "ChocolateyInstall=%RS_SW%\chocolatey"
%VIRTUAL_ENV%\Scripts\activate.bat

echo.
goto End





::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:check_path     -- validates if path exists 
::              -- %~1: env name
::              -- %~2: path to validate
SETLOCAL
  set "_env_name=%~1"
  set "_path=%~2"
  if not exist %_path% (
    echo    ! %_env_name% Path invalid =^( - "%_path%"
    echo.
    pause && exit 1
  ) else (
          echo    - %_env_name%= "%_path%"
  )
ENDLOCAL
goto:eof



echo.
:End