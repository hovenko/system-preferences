#!/bin/bash

. /home/hovenko/.git-prompt.sh

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\[$MAGENTA\]$(__git_ps1)\[$WHITE\]\n\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w$(__git_ps1)\n\$ '
fi

unset color_prompt force_color_prompt

