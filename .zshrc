# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/mahmoudaminhassan-dolah/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="dpoggi"
PROMPT='mahmoud@Macbook-pro » '
#ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git vi-mode git-open)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"
export SSH_KEY_PATH="~/.ssh/mdolah_rsa"

# phpbrew
[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias gs="git status"
alias vs="vagrant status"
alias git.io="gitio"
alias gist="gist -p -c"
alias gg="gist"
. /Users/mahmoudaminhassan-dolah/Documents/Other/cmd_line/z/z.sh

alias vagrant-xdebug='vagrant ssh -- -R 9100:127.0.0.1:9100'
alias bb="/Applications/led-backlight-osx"
alias cw="node ~/Documents/Work/ConnectWise_TimeSync/bin/cli.js"
#alias git=hub
LOGBOOK_DIR="/Users/mahmoudaminhassan-dolah/OneDrive/OneDrive - Somethingdigital.com LLC/logbook/"

function lb() {
    mkdir -p $LOGBOOK_DIR
    vim $LOGBOOK_DIR/$(date '+%Y-%m-%d').md
}
function lb-cat() {
    cat $LOGBOOK_DIR/$(date '+%Y-%m-%d').md
}
function vlb() {
    mkdir -p $LOGBOOK_DIR
    touch $LOGBOOK_DIR/$(date '+%Y-%m-%d').md
    vim $LOGBOOK_DIR/$(date '+%Y-%m-%d').md
}
function lbc() {
    echo "Today's logbook"
    mkdir -p $LOGBOOK_DIR
    code $LOGBOOK_DIR
    if [ ! -f $LOGBOOK_DIR/$(date '+%Y-%m-%d').md ]; then
        touch $LOGBOOK_DIR/$(date '+%Y-%m-%d').md
        echo "## Tasks

## Other" >> $LOGBOOK_DIR/$(date '+%Y-%m-%d').md
    fi
    code -g $LOGBOOK_DIR/$(date '+%Y-%m-%d').md:2
}
function lbcc() {
    echo "Tomorrow's logbook"
    TOMORROW_DATE=$(if [[ $( date -v+1d +%u ) -lt 5 ]] ; then date -v+1d '+%Y-%m-%d' ; else date -v+3d '+%Y-%m-%d' ; fi)
    mkdir -p $LOGBOOK_DIR
    code $LOGBOOK_DIR

    if [ ! -f $LOGBOOK_DIR/$TOMORROW_DATE.md ]; then
        touch $LOGBOOK_DIR/$TOMORROW_DATE.md
        echo "## Tasks

## Other" >> $LOGBOOK_DIR/$TOMORROW_DATE.md
    fi
    code -g $LOGBOOK_DIR/$TOMORROW_DATE.md
}
#function lbs() {
#    vim ~/logbook/standby-occurrences.md
#}
function fbr() {
  git fetch
  branches=$(git branch -a) &&
  branch=$(echo "$branches" | fzf +s +m -e) &&
  git checkout $(echo "$branch" | sed "s:.* remotes/origin/::" | sed "s:.* ::")
}
function gcopy() {
    gitio shorten "$1" | pbcopy
}
function notes-pdf() {
    mkdir -p ~/logbook/pdfs/
    markdown-pdf ~/logbook/$(date '+%Y-%m-%d').md
}

export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
#export LC_CTYPE=C 
#export LANG=C

#$reset_color→ '
fpath=(~/.zsh.d/ $fpath)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
alias config='/usr/bin/git --git-dir=/Users/mahmoudaminhassan-dolah/.cfg/ --work-tree=/Users/mahmoudaminhassan-dolah'
