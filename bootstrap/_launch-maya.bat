@echo off
SETLOCAL

set _maya_app_dir_src= %ECO_ROOT%\ecosystem-env\utilities\maya_app_dir-template\%MAYA_ver%-x64
set _maya_app_dir=%RS_USER_HOME_maya%\%MAYA_ver%-x64

set _OCTANE_LIC_SRC=C:\OctaneLic
set _OCTANE_ACCOUNT_CFG=octane_render_v1_live_account.cfg

if not exist %_MAYA_APP_DIR% (
	robocopy %_MAYA_APP_DIR_SRC% %_MAYA_APP_DIR% /IS /E /Z
)

if exist %_OCTANE_LIC_SRC%\mayapref (
	if not exist %_maya_app_dir%prefs\oiprefs.bin (
		robocopy  %_OCTANE_LIC_SRC%\mayapref  %_MAYA_APP_DIR_SRC%\prefs\  *.bin  /IS
	)

	if not exist %USERPROFILE%\AppData\Roaming\OctaneRender\%_OCTANE_ACCOUNT_CFG% (
		robocopy %_OCTANE_LIC_SRC%\appdata_roaming^
		%USERPROFILE%\AppData\Roaming\OctaneRender\^
		%_OCTANE_ACCOUNT_CFG% /IS
	)
)

if exist %_MAYA_APP_DIR% (
	echo %_MAYA_APP_DIR% exists
)


ENDLOCAL

start maya