#!/bin/bash


function iosus {
GRAD0='\[\033[00m\]'
GRAD1='\[\333\262\261\260\]'
GRAD2='\[\260\261\262\333\]'
COLOR1='\[\033[01;32;46m\]'
COLOR2='\[\033[00;30;46m\]'
COLOR3='\[\033[00;34;46m\]'
COLOR4='\[\033[00;34m\]'
COLOR5='\[\033[00;32m\]'
COLOR6='\[\033[01;37m\]'
COLOR7='\[\033[01;32m\]'
COLOR8='\[\033[00;37m\]'
PS1="$COLOR1$GRAD1$COLOR2\h$COLOR3$GRAD2$COLOR4$GRAD1 $COLOR6 \t\n\
$COLOR5\u$COLOR8:$COLOR7\w$COLOR8\$$GRAD0 "
PS2="$COLOR1$GRAD1$COLOR3$GRAD2$COLOR4$GRAD1$COLOR5>$GRAD0 "
}


echo `iosus 1 2 3 4`
