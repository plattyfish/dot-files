
export INFOPATH=$INFOPATH:/usr/share/info/emacs

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'


#-------- Color Manpages
export LESS_TERMCAP_mb=$'\E[01;31m'             # begin blinking
export LESS_TERMCAP_md=$'\E[01;31m'             # begin bold
export LESS_TERMCAP_me=$'\E[0m'                 # end mode
export LESS_TERMCAP_se=$'\E[0m'                 # end standout-mode                 
export LESS_TERMCAP_so=$'\E[01;44;33m'          # begin standout-mode - info box                              
export LESS_TERMCAP_ue=$'\E[0m'                 # end underline
export LESS_TERMCAP_us=$'\E[01;32m'             # begin underline
#export MANPAGER="/usr/bin/most -s"             # color using most





# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Script to try and solve tty screen display problems
export PROMPT_COMMAND="resize &>/dev/null ; $PROMPT_COMMAND"


# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTFILESIZE=2000
HISTTIMEFORMAT="%Y-%m-%d %T "

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize


# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# To try and stop ranger from crashing
export TERM=xterm-256color


# some more ls aliases
alias ll="ls -alF"
alias la="ls -A"
alias l="ls -CF"
alias c="clear"
alias d="cd /home/james/Documents"
alias g="cd /home/james/Documents/github"
alias m="cd /home/james/Music"
alias v="cd /home/james/Videos"
alias down="cd /home/james/Downloads"
alias e="emacs -nw"
alias fd="fdfind"
#James alias's
#alias fortune="fortune | fold -sw 70"
alias less="less -r"
alias nano="nano -l"
alias mp="find /home/james/Music/MP3_Albums -iname '*films*.mp3' | mpg123 --title  -@  -"
alias active="cd /home/james/Documents/active_scripts"


# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

source /home/james/.bashrc2




# James alias's are stored in these files

alias python='/usr/bin/python3'




#Jims paths
export PATH="/home/james/Documents/active_scripts:$PATH"
export PATH="/home/james/Documents/@files:$PATH"
export EDITOR=vim
export PATH="/bin:$PATH"


#Fancy prompt
export PS1="\[\e[32m\]\u\[\e[m\]\[\e[31m\]@\[\e[m\]\[\e[33m\]\h\[\e[m\]\\$ "



export FZF_TMUX=1
export MANWIDTH=100

source "$HOME/.cargo/env"
eval "$(starship init bash)"


