@ECHO OFF


echo.
echo root@ %~dp0...
echo.&&echo  @%~nx0


for %%d in (%~dp0..\..\..) do set ECO_ROOT=%%~fd
set           "ECO_ENV=%ECO_ROOT%\eco-env\env"
set    "eco_run=python %ECO_ROOT%\eco\bin\ecosystem.py"
set "eco_run_w=pythonw %ECO_ROOT%\eco\bin\ecosystem.py"

DOSKEY eco=%eco_run% $*

set PATH=%PATH%;^
%ECO_ROOT%\eco\bin;^
%ECO_ROOT%\eco-env\bin;^
%ECO_ROOT%\eco-env\bootstrap

echo   ECO_ROOT= "%ECO_ROOT%"
echo    ECO_ENV= "%ECO_ENV%"

call _studio-init.bat