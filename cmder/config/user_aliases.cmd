;= @echo off
;= rem Call DOSKEY and use this file as the macrofile
;= %SystemRoot%\system32\doskey /listsize=1000 /macrofile=%0%
;= rem In batch mode, jump to the end of the file
;= goto:eof
;= Add aliases below here

gl=git log --oneline --all --graph --decorate  $*
ls=ls --show-control-chars -F --color $*
pwd=cd
clear=cls
history=cat -n "%CMDER_ROOT%\config\.history"
unalias=alias /d $1

;= rem Navigation
cmderr=cd /d "%CMDER_ROOT%"
home=cd %UserProfile%  
workspace=cd %UserProfile%\Workspace  
coordinator=cd %UserProfile%\Workspace\Taxdoo\Coordinator\  
dotfiles=cd %UserProfile%\Workspace\Core\dotfiles\  
taxdoo=cd %UserProfile%\Workspace\Taxdoo\

open=explorer