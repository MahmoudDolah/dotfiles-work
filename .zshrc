echo "What's good, Mahmoud :)"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/mdolah/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="dpoggi"


# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git vi-mode kubectl kube-ps1)
PROMPT=$PROMPT'$(kube_ps1) '

source $ZSH/oh-my-zsh.sh
[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc

# User configuration
export EDITOR='vim'
export GOPATH='/Users/mdolah/Documents/go'
export PATH="$PATH:$GOPATH/bin"
export SPRINT="155"
export KOPS_STATE_STORE=s3://kubernetes-state-stores
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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# A lot of these have been lifted from https://news.ycombinator.com/item?id=18898523
rczsh='~/.zshrc'
alias src="source $rczsh"
alias vrc="vim $rczsh"
alias vo="vim -O"
alias v="vim"
alias k="kubectl"
alias p="pastebin -u"
alias lt="ls -lathr"
alias gg="gist -pc"
alias gist="gist -pc"
alias gistf="/usr/local/bin/gist"
alias gs="git status"
alias gca="git commit --amend"
alias gfa="git fetch --all"
alias tf="terraform"
alias gf="git flow"
alias bb="led-backlight-osx"
alias vl="vim $LOGBOOK_DIR"
alias mvl="mvim $LOGBOOK_DIR"
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias glog="\git log --color --all --date-order --decorate --dirstat=lines,cumulative --stat | sed 's/\([0-9] file[s]\? .*)$\)/\1\n_______\n-------/g' | \less -R"
alias lbj="/usr/local/bin/python3 /Users/mdolah/Documents/logbook/jira_logbook.py"
alias lbr="cd ~/Documents/notes && vi -- "$(ls -t | head -n 1)" && cd -"
alias notes="note"
alias standup="cd ~/Documents/Work && git standup && cd -"
alias myip="curl -4 icanhazip.com"
alias locat="locate"
# show pretty git diff
alias gitdiff='git difftool -y -x "colordiff -y -W $COLUMNS" | less -R'
# go to root git directory
alias cdgit='cd $(git rev-parse --show-toplevel)'
# get times for salah
alias prayer="curl -sSX GET http://api.aladhan.com/v1/timingsByCity\?city\=NYC\&country\=USA\&method\=2 | jq .data.timings"
alias weather="curl wttr.in/nyc"
. ~/.local/z
eval $(thefuck --alias)

NOTES_DIR="$HOME/Documents/notes"
export NOTES_DIR="$HOME/Documents/notes"

# Logbook
LOGBOOK_DIR="$HOME/Documents/logbook"
export LOGBOOK_DIR="$HOME/Documents/logbook"
function lb() {
    # Creates logbook entry and opens it up in Vim
    mkdir -p $LOGBOOK_DIR
    if [ ! -f $LOGBOOK_DIR/$(date '+%Y-%m-%d').md ]; then
        touch $LOGBOOK_DIR/$(date '+%Y-%m-%d').md
        echo $(date '+%Y-%m-%d')
        echo "## Tasks\n\n## Other" >> $LOGBOOK_DIR/$(date '+%Y-%m-%d').md
    fi
    vim $LOGBOOK_DIR/$(date '+%Y-%m-%d').md
}
function lbs() {
    # touch $LOGBOOK_DIR/$SPRINT_NUM
    mkdir -p $LOGBOOK_DIR
    if [ ! -f $LOGBOOK_DIR/$(date '+%Y-%m-%d').md ]; then
        touch $LOGBOOK_DIR/$(date '+%Y-%m-%d').md
        echo $(date '+%Y-%m-%d')
        echo "## Tasks\n\n## Other" >> $LOGBOOK_DIR/$(date '+%Y-%m-%d').md
    fi
    vim $LOGBOOK_DIR
}
function lbc() {
    # Creates logbook entry for today and opens up VS Code in logbook dir
    echo "Today's logbook"
    mkdir -p $LOGBOOK_DIR
    code $LOGBOOK_DIR
    if [ ! -f $LOGBOOK_DIR/$(date '+%Y-%m-%d').md ]; then
        touch $LOGBOOK_DIR/$(date '+%Y-%m-%d').md
        echo $(date '+%Y-%m-%d')
        echo "## Tasks\n\n## Other" >> $LOGBOOK_DIR/$(date '+%Y-%m-%d').md
    fi
    code -g $LOGBOOK_DIR/$(date '+%Y-%m-%d').md:2
}
function lbcc() {
    # Creates logbook entry for tomorrow
    #TOMORROW_DATE=$(if [[ $( date -v+1d +%u ) -lt 5 ]] ; then date -v+1d '+%Y-%m-%d' ; else date -v+3d '+%Y-%m-%d' ; fi)
    TOMORROW_DATE=$(if [[ $( date +%u ) -lt 5 ]] ; then date -v+1d '+%Y-%m-%d' ; else date -v+3d '+%Y-%m-%d' ; fi)
    echo "Tomorrow's logbook"
    echo $TOMORROW_DATE
    mkdir -p $LOGBOOK_DIR

    if [ ! -f $LOGBOOK_DIR/$TOMORROW_DATE.md ]; then
        touch $LOGBOOK_DIR/$TOMORROW_DATE.md
        echo $TOMORROW_DATE
        echo "## Tasks\n\n## Other" >> $LOGBOOK_DIR/$TOMORROW_DATE.md
    fi
    #code $LOGBOOK_DIR
    #code -g $LOGBOOK_DIR/$TOMORROW_DATE.md
}
function lbn() {
    # Creates a new logbook entry but doesn't open up VS Code
    if [ ! -f $LOGBOOK_DIR/$(date '+%Y-%m-%d').md ]; then
        touch $LOGBOOK_DIR/$(date '+%Y-%m-%d').md
        echo "## Tasks\n\n## Other" >> $LOGBOOK_DIR/$(date '+%Y-%m-%d').md
    fi
    code -r $LOGBOOK_DIR/$(date '+%Y-%m-%d').md
}
function note() {
    vim $NOTES_DIR/$1
}

function cheat() {
    curl cht.sh/$1
}

function vim-diff() {
    #vim -p $(git status --porcelain $1 | awk '{print $2}')
    vim -p $(git status -s $1 | awk '{print $2}')
}
alias vd="vim-diff"

function delete-branch() {
     git push --delete $1
     git branch -D $1
}
alias delbr="delete-branch"

function changeMac() {
    local mac=$(openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/.$//')
    sudo ifconfig en0 ether $mac
    sudo ifconfig en0 down
    sudo ifconfig en0 up
    echo "Your new physical address is $mac"
}

function vf() {
    vim $(fzf)
}

function fbr() {
  git fetch
  local branches branch
  branches=$(git branch -a) &&
  branch=$(echo "$branches" | fzf +s +m -e) &&
  git checkout $(echo "$branch" | sed "s:.* remotes/origin/::" | sed "s:.* ::")
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"
if [ /usr/local/bin/kubectl ]; then source <(kubectl completion zsh); fi
