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
#ZSH_THEME="spaceship"

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
plugins=(git vi-mode kubectl kube-ps1 aws docker-compose)

source $ZSH/oh-my-zsh.sh
# Dpoggi theme modified to include kube_ps1
PROMPT='%{$fg[$NCOLOR]%}%n%{$reset_color%}@%{$fg[cyan]%}%m%{$reset_color%}:%{$fg[magenta]%}%~$(git_prompt_info)$(kube_ps1) %{$fg[red]%}%(!.#.»)%{$reset_color%} '

[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc

# User configuration
export GOPATH='/Users/mdolah/Documents/go'
export PATH="$PATH:$GOPATH/bin"
export KOPS_STATE_STORE=s3://kubernetes-state-stores
export SPRINT='166'
export VISUAL=nvim
export EDITOR="$VISUAL"
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
alias vrc="nvim $rczsh"
alias vim="nvim"
alias nvimrc="nvim ~/.config/nvim/init.vim"
alias wtf="wtfutil"
alias wtfvrc="nvim ~/.config/wtf/config.yml"
alias sampler="sampler -c ~/.config/sampler/config.yml"
alias samplervrc="nvim ~/.config/sampler/config.yml"
alias v="vim"
alias vo="vim -O"
alias vp="vim $(pbpaste)"   # Open file path in clipboard in vim
alias nv="nvim"
alias nvo="nvim -O"
alias nvp="nvim $(pbpaste)"   # Open file path in clipboard in vim
alias k="kubectl"
alias tf="terraform"
alias p="pastebin -u"   # Create unlisted pastebin (similar to secret gist)
alias pb="pastebin -u"   # Create unlisted pastebin (similar to secret gist)
alias pastebin="pastebin -u" # Same set up as gists below
alias pastebinf="pastebin"
alias lt="ls -lathr"
alias gg="gist -pc"     # Create secret gist
alias gist="gist -pc"   # Make every gist created secret
alias gistf="/usr/local/bin/gist"   # unless otherwise specified
alias gs="git status"
alias gca="git commit --amend -v"
alias gfa="git fetch --all"
alias gl="tig"
alias gf="git flow"
alias glog="\git log --color --all --date-order --decorate --dirstat=lines,cumulative --stat | sed 's/\([0-9] file[s]\? .*)$\)/\1\n_______\n-------/g' | \less -R"
# https://gist.github.com/evanscottgray/8571828#gistcomment-1772213
alias docker-kill-all="docker kill $(docker ps -q)"
alias bb="led-backlight-osx"
alias display='displayplacer "id:FAA30FB7-F689-B0F2-3E70-3353DE6D2774 res:2560x1440 hz:60 color_depth:8 scaling:off origin:(0,0) degree:0" "id:344EE880-275A-77D9-EEEF-721B572C1209 res:1440x2560 hz:60 color_depth:8 scaling:off origin:(2560,-411) degree:90"'	# Sets monitors
alias vl="nvim $LOGBOOK_DIR"
alias mvl="mvim $LOGBOOK_DIR"
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias lbj="/usr/local/bin/python3 /Users/mdolah/Documents/logbook/jira_logbook.py"
alias lbr="cd ~/Documents/notes && vi -- "$(ls -t | head -n 1)" && cd -"
alias notes="note"
alias standup="cd ~/Documents/Work && git standup && cd -"
alias myip="curl -4 icanhazip.com"
alias locat="locate"
alias pokesay="pokemonsay"
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
        # Run lbj command to create today's logbook entry if none exists
        /usr/local/bin/python3 /Users/mdolah/Documents/logbook/jira_logbook.py
    fi
    nvim $LOGBOOK_DIR/$(date '+%Y-%m-%d').md
}
function note() {
    nvim $NOTES_DIR/$1
}

function cheat() {
    curl cht.sh/$1
}

function vim-diff() {
    #vim -p $(git status --porcelain $1 | awk '{print $2}')
    nvim -p $(git status -s $1 | awk '{print $2}')
}
alias vd="vim-diff"
alias nvd="vim-diff"

function delbr() {
     git push origin --delete $1
     git branch -D $1
}
alias delete-branch="delbr"

function gito() {
    gitio $1 | grep "URL" | awk '{print $8}' | pbcopy
}

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

function nvf() {
    nvim $(fzf)
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
