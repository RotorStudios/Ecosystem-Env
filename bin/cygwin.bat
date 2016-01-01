@echo off

call %~dp0_eco\_ecosystem-init.bat
:: set $HOME dir for cygwin
set HOME=%RS_USER_home%\cygwin64

set SHELL=/usr/bin/bash
set CHERE_INVOKING=1
set ECO_HOME=%ECO_ROOT%/ecosystem-env/bin
chdir %RS_AUXILIARY%\apps\cygwin64\bin

bash --login -i -c 'cd ${ECO_HOME}; exec bash'
::%RS_AUXILIARY%\apps\cygwin64\bin\mintty -c `cd ${ECO_HOME}; exec /bin/bash` -l