# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/jp/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
base16_ocean
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=13

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
plugins=(git extract npm node web-search command-not-found docker)
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"
export PYTHONPATH="/home/jp/Elemize/Libraries/xgboost/python-package:$PYTHONPATH"
export PYTHONPATH="/home/jp/Elemize/Libraries/LightGBM/python-package:$PYTHONPATH"
export PYTHONPATH="/home/jp/.virtualenvs/Sibyl"

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/cuda/lib64:/usr/local/cuda/extras/CUPTI/lib64"
export CUDA_HOME=/usr/local/cuda
export PATH="/usr/local/cuda/bin:$PATH"
# Virtual Environment Wrapper
export PATH="/usr/local/bin:$PATH"
source /usr/local/bin/virtualenvwrapper.sh
#source /usr/share/virtualenvwrapper/virtualenvwrapper.sh
export SOLCAST_API_KEY="LnqEiMIMTdC0M-McbTID8LwbHgDlhIgd"
export INFLUX_HOST="192.168.1.103"
export INFLUX_PORT=8086
export INFLUX_USER="elemize"
export INFLUX_PASSWORD="Sharergy2016"
export INFLUX_DBNAME="ELCHAPO_DATA"
export INFLUX_CLOUD_HOST="35.176.13.85"
export INFLUX_CLOUD_PORT=8086
export INFLUX_CLOUD_USER="abaldan"
export INFLUX_CLOUD_PASSWORD="abaldan-password"
export INFLUX_CLOUD_DBNAME="ELCHAPO_DATA"
export MYSQL_HOST="192.168.1.103"
export MYSQL_USER="ilios24"
export MYSQL_PASSW="sharergy2016"
export AIRFLOW_ADMIN_USERNAME="admin"
export AIRFLOW_ADMIN_PASSWORD="Sharergy2016"
export AIRFLOW_ADMIN_EMAIL="j.parvizi@elemize.com"

function lb() {
    vim ~/logbook/$(date '+%Y-%m-%d').md
}

function docker-removecontainers() {
    docker stop $(docker ps -aq)
    docker rm $(docker ps -aq)
}

function ambaradan() {
    exec /home/jp/Elemize/AI/ambaradan/run.sh
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
