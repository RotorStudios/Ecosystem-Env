@ECHO OFF
echo.
echo  @%~0


set "RS_SW=S:\dev\_S\sw"
set "RS_USER_home=T:\users\%USERNAME%"
set "RS_USER_DEV_home=S:\dev\_S\dev-area\home\%USERNAME%"
set "VIRTUAL_ENV=%RS_SW%\apps\python\py2.7.9-win64"
call :check_path %RS_SW%
call :check_path %RS_USER_home%
call :check_path %RS_USER_DEV_home%
call :check_path %VIRTUAL_ENV%\Scripts\activate.bat

goto End




::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:check_path     -- validates if path exists 
::              -- %~1: path to validate
SETLOCAL
  set "_path=%~1"
  if not exist %_path% (
    echo    ! Path invalid =^( - "%_path%"
    echo.
    pause && exit 1
  ) else (
          echo    - is valid :D - "%_path%"
  )
ENDLOCAL
goto:eof

echo.
:End