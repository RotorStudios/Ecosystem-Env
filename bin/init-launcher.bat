
for %%d in (%~dp0..\..) do set REL_PATH=%%~fd
call %REL_PATH%\Ecosystem\bin\ecosystem-init.bat