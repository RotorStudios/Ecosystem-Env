@ECHO OFF

mode con: cols=100 lines=50
powershell -command "&{$H=get-host;$W=$H.ui.rawui;$B=$W.buffersize;$B.width=100;$B.height=9999;$W.buffersize=$B;}"


:: Maya aliases
Doskey maya2015=%eco_run_w%       -r maya -t base,maya2015,mayaportable,stable

Doskey maya2015-rc=%eco_run_w%    -r maya -t base,maya2015,mayaportable,rc,mtoa
Doskey maya2015-beta=%eco_run_w%  -r maya -t base,maya2015,mayaportable,beta,mtoa
Doskey maya2015-alpha=%eco_run_w% -r maya -t base,maya2015,mayaportable,alpha,mtoa

Doskey maya2015-dev=%eco_run_w%   -r maya -t base,maya2015,mayaportable,dev,mtoa,altus,alShaders
Doskey maya2015-devjc=%eco_run_w% -r maya -t base,maya2015,mayaportable,devjc,mtoa,altus,alShaders

:: IDE aliases
::Doskey     sublimeText2=%eco_run_w -r sublime_text -t base,sublimeText2
Doskey sublime2=%RS_AUXILIARY%\apps\sublime_text2.lnk
Doskey sublime3=%RS_AUXILIARY%\apps\sublime_text3.lnk


:: auxiliary tool aliases
Doskey rv=%RS_AUXILIARY%\apps\rv-stable.lnk
Doskey sg=%RS_AUXILIARY%\apps\shotgun.lnk

Doskey xy=%RS_AUXILIARY%\apps\XYplorer.lnk



