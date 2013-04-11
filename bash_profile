alias starwars='telnet towel.blinkenlights.nl'

export PYTHON24="/Users/deif/bin/python2.4"
export PYTHON27="/Users/deif/bin/python2.7"

# setting correct locales
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# - enable some color stuff
alias ls='ls --color'
alias grep='grep --colour'

# - generic aliases
alias ls='ls -G'
alias ll='ls -hl'
alias la='ls -la'
alias create_zip='zip -9 -y -r -q'

# GIT
alias gs='git status'
alias gc='git commit'
alias gd='git diff'
alias gdc='git diff --cached'

# configuration
export EDITOR='vim'

# change the window title and set colorful PS1
PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/$HOME/~}\007"; PS1="\[\033[01;32m\]\u@${HOSTNAME%%.*}\[\033[01;34m\] \w `scm_prompt`\$\[\033[00m\] "'

#env
alias sandbox_env='source /Users/deif/Library/VirtualEnv/sandbox/bin/activate'
alias sandbox='cd /Users/deif/Files/workspaces/sandbox/ && sandbox_env && mate .'

export FIGNORE=".svn:.git:.egg-info:.DS_Store"
