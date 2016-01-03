@ECHO OFF

set "RS_AUXILIARY=S:\dev\auxiliary"
set "RS_USER_home=T:\users\%USERNAME%"
set "RS_USER_DEV_home=S:\dev\home\%USERNAME%"

set "VIRTUAL_ENV=%RS_AUXILIARY%\apps\python\py2.7.9-win64"
call %VIRTUAL_ENV%\Scripts\activate.bat