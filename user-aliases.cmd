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

rl=reload
aliases=cat D:\Development\Tools\cmder\config\.bashrc
cr=cd "%CMDER_ROOT%"

ls=ls --color=auto -p
ll=ls -la

# Easier navigation: .., ..., ...., ....., .4, .5, and ~
..=cd ..
...=cd ../..
....=cd ../../..
.....=cd ../../../..
.4=cd ../../../..
.5=cd ../../../../..
~=cd ~/

# Apps
e=explorer .
vs=code .
ns=npm start

# Directories
home=cd D:\Development\Sandboxes\
githome=cd D:\Development\Sandboxes\Git