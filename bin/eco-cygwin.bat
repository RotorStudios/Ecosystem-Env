@echo off

call %~dp0_eco\_ecosystem-init.bat
:: set $HOME dir for cygwin
set HOME=%RS_USER_home%\cygwin64

set SHELL=/usr/bin/bash
set CHERE_INVOKING=1
set ECO_HOME=%ECO_ROOT%\eco-env\bin


call :check_path RS_USER_home  %RS_USER_home%
call :check_path HOME  %HOME%
call :check_path ECO_HOME  %ECO_HOME%


chdir %RS_SW%\cygwin64\bin
bash --login -i -c 'cd ${ECO_HOME}; exec bash'
::%RS_SW%\cygwin64\bin\mintty -c `cd ${ECO_HOME}; exec /bin/bash` -l



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