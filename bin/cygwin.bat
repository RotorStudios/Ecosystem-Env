@echo off

call %~dp0_eco\_ecosystem-init.bat
:: set $HOME dir for cygwin
set HOME=%RS_USER_home%/cygwin64
chdir S:\dev\auxiliary\apps\cygwin64\bin

bash --login -i

