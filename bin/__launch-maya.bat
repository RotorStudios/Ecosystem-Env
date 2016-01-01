@echo off
SetLocal EnableDelayedExpansion


if not exist %RS_USER_HOME_maya%\%MAYA_ver%-x64 (
	robocopy \\rotor01\system_resources\gpo_push\reset_maya_prefs\2015-x64 %RS_USER_HOME_maya%\%MAYA_ver%-x64 /IS /E /Z
	)

if exist C:\OctaneLic\mayapref (
	if not exist %USERPROFILE%\Documents\maya\2015-x64\prefs\oiprefs.bin (
		robocopy C:\OctaneLic\mayapref^
		%RS_USER_HOME_maya%\%MAYA_ver%-x64prefs\ *.bin /IS
		)
	if not exist %USERPROFILE%\AppData\Roaming\OctaneRender\octane_render_v1_live_account.cfg (
		robocopy C:\OctaneLic\appdata_roaming %USERPROFILE%\AppData\Roaming\OctaneRender\ octane_render_v1_live_account.cfg /IS
		)
	)