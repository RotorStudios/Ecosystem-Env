@ECHO OFF

set "VIRTUAL_ENV=%RS_SW%\apps\python\py2.7.9-win64"
call %VIRTUAL_ENV%\Scripts\activate.bat

set "RS_SW=S:\dev\_S\sw"
set "RS_USER_home=T:\users\%USERNAME%"
set "RS_USER_DEV_home=S:\dev\home\%USERNAME%"