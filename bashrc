
# ~/.bashrc: executed by bash(1) for non-login shells.
# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

### Command History Options
HISTCONTROL=ignoreboth # No duplicate lines in history
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s histappend # append to the history file, don't overwrite it

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

## Trim the CWD part of the PS1 string
export PROMPT_DIRTRIM=2

## Colors for man pages
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Autocomplete Stuff
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

### Alias definition file
if [ -f ~/.config/bash_aliases ]; then
    . ~/.dots/bash_aliases
fi

### Path Changes
# random apps
# export PATH="~/.misc/anaconda3/bin/:$PATH"  # commented out by conda initialize
export PATH="~/.misc/gephi-0.9.2/bin:$PATH"
# Quick Start Scripts
export PATH="~/.config/i3/layout_scripts:$PATH"
# Random shit
export PATH="~/.bin:$PATH"
# Goddamn MATLAB
export PATH="/home/wpower3/.bin/MATLAB/R2019a/bin:$PATH"

### Use Sublime for sudoedit
export SUDO_EDITOR=/usr/bin/subl
export EDITOR=/usr/bin/subl

### - Conda init created this block. It might not be totally 'system agnostic'
#     on a reinstall of dot files, might want to delete this and have conda
#     redo. Make sure you use the option that leaves the default env OFF by
#     so you don't waste all those cycles loading all this shit on every term.

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/wpower3/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/wpower3/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/wpower3/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/wpower3/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

## NVM startup - Turned into aliases bc it lags terminal startup
export NVM_DIR="$HOME/.nvm"
alias nvm_start='[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"'  # This loads nvm
# alias nvm_auto= '[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"'  # This loads nvm bash_completion

# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
