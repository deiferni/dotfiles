source /Users/deif/Files/dotfiles/completion/git-completion.bash

export PYTHON24="/Users/deif/bin/python2.4"
export PYTHON27="/Users/deif/bin/python2.7"

# setting correct locales
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# - enable some color stuff
alias ls='ls --color'
alias grep='grep --colour'

# increase open file limit
ulimit -n 1024

# - generic aliases
alias ls='ls -G'
alias ll='ls -hl'
alias la='ls -la'
alias create_zip='zip -9 -y -r -q'
alias st='open $1 -a sourcetree'

# GIT
alias ga='git add'
alias gc='git commit'
alias gd='git diff'
alias gdc='git diff --cached'
alias gp='git push'
alias gs='git status'

# sublime
function project_aware_subl {
    if [[ $# -ge 1 ]]; then
        project_file=$(ls $1/*.sublime-project 2>/dev/null | head -n 1)
        if [[ -z $project_file ]]; then
            cmd="subl $@"
        else
            shift
            cmd="subl $project_file $@"
        fi
    else
        cmd="subl"
    fi
    $cmd
}
alias subl="project_aware_subl"
alias slime='subl'

# xcode
alias ios="open /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone\ Simulator.app"

# fun
alias beer='echo -e "\xF0\x9f\x8d\xba"'
alias starwars='telnet towel.blinkenlights.nl'

# configuration
export EDITOR='vim'

# change the window title and set colorful PS1
PROMPT_COMMAND='history -a; history -r; echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/$HOME/~}\007"; PS1="\[\033[01;32m\]\u@${HOSTNAME%%.*}\[\033[01;34m\] \w `scm_prompt`\$\[\033[00m\] "'

#env
alias sandbox_env='source /Users/deif/Library/VirtualEnv/sandbox/bin/activate'
alias sandbox='cd /Users/deif/Files/workspaces/sandbox/ && sandbox_env && mate .'

export FIGNORE=".svn:.git:.egg-info:.DS_Store"

# Oracle
export ORACLE_HOME=/Users/deif/Library/OracleInstantClient_10_2
export PATH=$PATH:/Users/deif/Library/OracleInstantClient_10_2
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${ORACLE_HOME}/lib
export DYLD_LIBRARY_PATH=${DYLD_LIBRARY_PATH}:${ORACLE_HOME}/lib