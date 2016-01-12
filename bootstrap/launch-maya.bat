@echo off
SETLOCAL

set _maya_app_dir_src= %ECO_ROOT%\ecosystem-env\utilities\maya_app_dir-template\%MAYA_ver%-x64
set _maya_app_dir=%RS_USER_HOME_maya%\%MAYA_ver%-x64

set _octane_lic_src=C:\OctaneLic
set _octane_account_cfg=octane_render_v1_live_account.cfg


if not exist %_maya_app_dir% (
	robocopy %_maya_app_dir_src% %_maya_app_dir% /IS /E /Z
)

::if exist %_octane_lic_src%\mayapref (
::	if not exist %_maya_app_dir%prefs\oiprefs.bin (
::		robocopy  %_octane_lic_src%\mayapref  %_maya_app_dir%\prefs\ *.bin  /IS
::	)
::
::	if not exist %USERPROFILE%\AppData\Roaming\OctaneRender\%_octane_account_cfg% (
::		robocopy %_octane_lic_src%\appdata_roaming^
::		%USERPROFILE%\AppData\Roaming\OctaneRender\^
::		%_octane_account_cfg% /IS
::	)
::)


if exist %_maya_app_dir% (
	echo %_maya_app_dir% exists
)


ENDLOCAL

start maya