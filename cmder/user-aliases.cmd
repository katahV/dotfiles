;= @echo off
;= rem Call DOSKEY and use this file as the macrofile
;= %SystemRoot%\system32\doskey /listsize=1000 /macrofile=%0%
;= rem In batch mode, jump to the end of the file
;= goto:eof
;= Add aliases below here

pwd=cd
clear=cls
history=cat "%CMDER_ROOT%\config\.history"
unalias=alias /d $1
cmderr=cd /d "%CMDER_ROOT%"

rl=reloadhistory
aliases=cat C:\_Apps\cmder\config\.bashrc
cr=cd "%CMDER_ROOT%"

ls=ls --color=auto -p
ll=ls -la

g = git

;= Easier navigation: .., ..., ...., ....., .4, .5, and ~
..=cd ..
...=cd ../..
....=cd ../../..
.....=cd ../../../..
.4=cd ../../../..
.5=cd ../../../../..
~=cd ~/

;= Apps
e=explorer .
vs=code .
ns=npm start
webapp=cat C:\_Apps\WebAppBuilderForArcGIS\startup.bat

;= Directories
home=cd C:\users\vcat\
sand=cd C:\_Development\Sandboxes\
wab=cd "%WAB_HOME%"
dev1=cd C:\_Development\Sandboxes\webApps