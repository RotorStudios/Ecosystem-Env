@ECHO OFF
echo.
echo  @%~0


set "RS_SW=S:\dev\_S\sw"
set "RS_USER_home=T:\users\%USERNAME%"
set "RS_USER_DEV_home=S:\dev\_S\dev-area\home\%USERNAME%"
set "VIRTUAL_ENV=%RS_SW%\apps\python\py2.7.9-win64"

call :check_path RS_SW  %RS_SW%
call :check_path RS_USER_home  %RS_USER_home%
call :check_path RS_USER_DEV_home  %RS_USER_DEV_home%
call :check_path virtual_env/script  %VIRTUAL_ENV%\Scripts\activate.bat
call :check_path chocolatey  %RS_SW%\chocolatey\bin

set "PATH=%PATH%;%RS_SW%\chocolatey\bin"
%VIRTUAL_ENV%\Scripts\activate.bat


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