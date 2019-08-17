# Sample .bashrc for SuSE Linux
# Copyright (c) SuSE GmbH Nuernberg

# There are 3 different types of shells in bash: the login shell, normal shell
# and interactive shell. Login shells read ~/.profile and interactive shells
# read ~/.bashrc; in our setup, /etc/profile sources ~/.bashrc - thus all
# settings made here will also take effect in a login shell.
#
# NOTE: It is recommended to make language settings in ~/.profile rather than
# here, since multilingual X sessions would not work properly if LANG is over-
# ridden in every subshell.

# Some applications read the EDITOR variable to determine your favourite text
# editor. So uncomment the line below and enter the editor of your choice :-)
#export EDITOR=/usr/bin/vim
#export EDITOR=/usr/bin/mcedit

# For some news readers it makes sense to specify the NEWSSERVER variable here
#export NEWSSERVER=your.news.server

# If you want to use a Palm device with Linux, uncomment the two lines below.
# For some (older) Palm Pilots, you might need to set a lower baud rate
# e.g. 57600 or 38400; lowest is 9600 (very slow!)
#
#export PILOTPORT=/dev/pilot
#export PILOTRATE=115200

test -s ~/.alias && . ~/.alias || true


#-------------------personal config starts from here------------------------
archey3 
export VISUAL=emacs
export EDITOR=emacs

#***************************** tab completion ****************************
# By default Bash tab completion is only for file/dir names, this following
# changes completion working for both file names and commands
#complete -cf sudo #it seem this does not work

#********************************\PS1 config./*************************

#number within [31,39] changes the forground color;
#\j shows the current number of jobs in the running shell;
export PS1="\[\033[0;37m\]\342\224\214\342\224\200\$([[ \$? != 0 ]] && echo \"[\[\033[0;31m\]\342\234\227\[\033[0;37m\]]\342\224\200\")[$(if [[ ${EUID} == 0 ]]; then echo '\[\033[0;31m\]\h'; else echo '\[\033[0;33m\]\u\[\033[0;37m\]@\[\033[0;96m\]\h'; fi)\[\033[0;37m\]]\342\224\200[\[\033[0;32m\]\w\[\033[0;37m\]]\n\[\033[0;37m\]\342\224\224\342\224\200\342\224\200\342\225\274 \[\033[0m\]"
#export PS1='\[\e[35m\]\u\[\e[m\]\[\e[33m\]@\[\e[m\]\[\e[36m\]\h\[\e[m\]\[\e[32m\]*\j*\[\e[m\]:\w\[\e[32m\]>\[\e[m\]'


#***********\remote to lab computer by using rdesktop/*****************
alias lab_quant_full='rdesktop -u user -p xxxxxxx -g 1920x1080 146.6.180.210'
alias lab_slower='rdesktop -u slower -p xxxxx 146.6.180.210'
alias lab_slower_full='rdesktop -u slower -p xxxxx -g 1920x1080 146.6.180.210'
alias lab_beam='rdesktop -u beam -p xxxxx 146.6.180.208 -g 1920x1050'
alias lab_beam_full='rdesktop -u beam -p xxxxxx 146.6.180.208 -g 1920x1080'
alias lab_Karl='rdesktop -u artemis -p xxxxxx 146.6.180.212'
alias lab_Karl_full='rdesktop -u artemis -p xxxxxx -g 1366x768 146.6.180.212'
alias lab_jianyong='rdesktop -u Brownian -p xxxxx 128.83.155.3'
alias lab_jianyong_full='rdesktop -u Brownian -p xxxxx -g 1920x1080 128.83.155.3'
alias lab_starscream_full='rdesktop -u StarScream -p xxxxxx -g 1920x1080 146.6.180.215'
alias lab_server='rdesktop -u yulu -p xxxxx -g 1920x1050 internal.raizenlab.ph.utexas.edu'
alias lab_server_full='rdesktop -u yulu -p xxxxx -g 1920x1080 internal.raizenlab.ph.utexas.edu'
alias lab_office='rdesktop -u superlu -p xxxxxxx -g 1920x1050 146.6.180.183'
alias lab_office_full='rdesktop -u superlu -p xxxxx -g 1920x1080 146.6.180.183'

#*******\control sound of laptop speaker using amixer/****************

#follow 'on' to turn on, 'off' to turn off;
#follow %[0-100] to control the sound
alias mysound="amixer set 'Master'"

#***********\control brightness of screen by using xrandr************

#follow [0.0-1.0] to control brightness 
alias myscreen='xrandr --output eDP1 --brightness'

#***********\Alias for emacs command line/************
alias emacs='emacs -nw'
alias cdw='cd && cd Work'
alias cdg='cd && cd Github'
# Following give error after arch update when import matplotlib.pyplot as plt 
#export PYTHONPATH='/home/yulu/.local/lib/python3.6/site-packages':'/home/yulu/Github'

alias connect_office='xrandr --output HDMI2 --auto --right-of eDP1'
alias disconnect_office='xrandr --output HDMI2 --off'


#************* Tesseract-ocr env path*********************
#export TESSDATA_PREFIX="/usr/share/tessdata/"
