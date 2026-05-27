# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-vi-mode)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
# ---------------------------------------------------
# my own stuff

alias viminstall="vim +PluginInstall +qall"
fpath+=/opt/homebrew/share/zsh/site-functions
autoload -Uz compinit && compinit
export PATH="/opt/homebrew/opt/openjdk@21/bin:$PATH"
export JAVA_HOME="/opt/homebrew/opt/openjdk@21"
# export SPARK_HOME="/Users/spencer.scott/miniconda3/envs/dev/lib/python3.11/site-packages/pyspark"

# Created by `pipx` on 2025-04-08 16:53:01
export PATH="$PATH:/Users/spencer.scott/.local/bin"

export PYTHONPATH="$PYTHONPATH:/Users/spencer.scott/repos/data-sql-scripts/airflow/scripts"
export PYTHONPATH="$PYTHONPATH:/Users/spencer.scott/repos/data-sql-scripts/airflow/constants"
export PYTHONPATH="$PYTHONPATH:/Users/spencer.scott/repos/data-sql-scripts/airflow/libs"
export PYTHONPATH="$PYTHONPATH:/Users/spencer.scott/repos/data-sql-scripts/airflow/plugins"
export PYTHONPATH="$PYTHONPATH:/Users/spencer.scott/repos/data-sql-scripts/airflow/scripts/data_vendor_imports"
export CDPATH="$HOME:$HOME/repos:"


export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"

# pyenv global 3.11.13
#
# export PYENV_ROOT="$HOME/.pyenv"
# [[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init - zsh)"

export PIP_CERT=/private/etc/ssl/certs/zscaler-ca.pem
export NODE_EXTRA_CA_CERTS=$PIP_CERT

# aws shortcuts
# alias aws_sandbox="aws sso logout ; export AWS_PROFILE=sandbox ; aws sso login ; $( aws configure export-credentials --format env )"
aws_login() {
    aws sso logout ;
    export AWS_PROFILE=$1;
    aws sso login ;
    $( aws configure export-credentials --format env )
}
# aws_prod="aws sso logout ; export AWS_PROFILE=prod ; aws sso login ; $( aws configure export-credentials --format env )"
# alias aws_mgmt="aws sso logout ; export AWS_PROFILE=mgmt ; aws sso login ; $( aws configure export-credentials --format env )"
alias gitroot="cd -P -- \"$(git rev-parse --show-toplevel)\"" # when in a repo, shortcut to cd to root of repo

# tmuxinator config
export EDITOR='vim'
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export PATH="/opt/homebrew/lib/ruby/gems/4.0.1/bin:$PATH"
alias mux="tmuxinator"

# vikeys in shell
bindkey -v

# zsh-vi-mode prefs
ZVM_INSERT_MODE_CURSOR=$ZVM_CURSOR_BLINKING_BEAM
ZVM_LINE_INIT_MODE=$ZVM_MODE_INSERT

export PATH=$PATH:/opt/homebrew/bin

# asdf config
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
. <(asdf completion zsh)

# uv config
export UV_NATIVE_TLS=true 
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

zmodload zsh/mapfile
alias tf="terraform"
alias tm="terramate"
# Use ZScaler Certificate Bundle for Command Line Tools
if [ -f "$HOME/.ssl/activate-zscaler.sh" ]; then
    source "$HOME/.ssl/activate-zscaler.sh"
fi
