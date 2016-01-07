@ECHO OFF


for %%d in (%~dp0..\..\..) do set ECO_ROOT=%%~fd
echo ECO_ROOT=%ECO_ROOT%

set eco_run=python %ECO_ROOT%\ecosystem\bin\ecosystem.py
set eco_run_w=pythonw %ECO_ROOT%\ecosystem\bin\ecosystem.py

Doskey eco=%eco_run% $*

set ECO_ENV=%ECO_ROOT%\ecosystem-env\env
echo ECO_ENV=%ECO_ENV%

set PATH=%PATH%;^
%ECO_ROOT%\ecosystem\bin;^
%ECO_ROOT%\ecosystem-env\bin;^
%ECO_ROOT%\ecosystem-env\bootstrap

call _studio-init.bat