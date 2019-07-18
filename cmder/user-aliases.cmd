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
aliases=cat C:\_Apps\cmder\config\user-aliases.cmd
rl=reloadhistory
ls=ls --color=auto -p
ll=ls -la

;= Easier navigation
..=cd ..
...=cd ../..
....=cd ../../..
.....=cd ../../../..
.4=cd ../../../..
.5=cd ../../../../..

;= Directories
cmderr=cd /d "%CMDER_ROOT%"
home=cd C:\users\vcat\
sand=cd C:\_Development\Sandboxes\
wab=cd "%WAB_HOME%" & startup.bat

;= Apps
e=explorer .
vs=code .

;= Dev
g=git $*
run-server=lite-server -c %HOME%/bs-config.json
browser-sync=browser-sync start --server --directory --files "*.html, js/*.js, css/*.css"
run-jetty=mvn jetty:run -Denv=dev
clean-run-jetty=mvn clean jetty:run -Denv=dev

build-gloris=mvn clean install -P compress,upload-bundles-and-apps
build-cpmrisk=mvn clean install -P compress,upload