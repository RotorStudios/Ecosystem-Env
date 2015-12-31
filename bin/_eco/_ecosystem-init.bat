@ECHO OFF

set python_exe=S:\dev\auxiliary\apps\python\py2.7.9-win64\Scripts\python.exe
set pythonw_exe=S:\dev\auxiliary\apps\python\py2.7.9-win64\Scripts\pythonw.exe

for %%d in (%~dp0..\..\..) do set ECO_ROOT=%%~fd
echo ECO_ROOT=%ECO_ROOT%

set eco_run=%python_exe% %ECO_ROOT%\ecosystem\bin\ecosystem.py
set eco_run_w=%pythonw_exe% %ECO_ROOT%\ecosystem\bin\ecosystem.py

set ECO_ENV=%ECO_ROOT%\ecosystem-env\env
echo ECO_ENV=%ECO_ENV%

set PATH=%PATH%;^
%ECO_ROOT%\ecosystem\bin;^
%ECO_ROOT%\ecosystem-env\bin

call %~dp0_studio-init.bat