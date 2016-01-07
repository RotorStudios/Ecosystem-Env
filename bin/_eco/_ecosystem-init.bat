@ECHO OFF


for %%d in (%~dp0..\..\..) do set ECO_ROOT=%%~fd
echo ECO_ROOT=%ECO_ROOT%

set eco_run=python %ECO_ROOT%\eco\bin\ecosystem.py
set eco_run_w=pythonw %ECO_ROOT%\eco\bin\ecosystem.py

Doskey eco=%eco_run% $*

set ECO_ENV=%ECO_ROOT%\eco-env\env
echo ECO_ENV=%ECO_ENV%

set PATH=%PATH%;^
%ECO_ROOT%\eco\bin;^
%ECO_ROOT%\eco-env\bin;^
%ECO_ROOT%\eco-env\bootstrap

call _studio-init.bat