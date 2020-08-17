# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/atuladhar/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

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
# at: git plugin is slow for BIG git repositories
plugins=(
  git
)

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# at: Remove @... from prompt
prompt_context() {}

# at: Using vim key bindings in the terminal
#bindkey -v

# added by Anaconda3 5.2.0 installer
export PATH="$PATH:/Users/atuladhar/anaconda3/bin"

# added by Anaconda3 5.3.0 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/atuladhar/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/Users/atuladhar/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/atuladhar/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/Users/atuladhar/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<

# Ruby exports
export GEM_HOME=$HOME/gems
export PATH=$HOME/gems/bin:$PATH

# at: go-lang setup
export GOPATH=$HOME/projects/go

# at: add GOPATH
export PATH=$PATH:$(go env GOPATH)/bin

# at: add jenv to path
JENV_HOME="$HOME/.jenv"
PATH="$JENV_HOME/bin:$PATH"
eval "$(jenv init -)"

# at: mysql
export PATH=$PATH:/usr/local/mysql/bin

# at: adding for MulVAL
export MULVALROOT=/Users/atuladhar/projects/projects-from-backup/mulval/MulVAL
export PATH=$PATH:$MULVALROOT/bin:$MULVALROOT/utils

# at: exporting XSB for MulVAL
export XSBROOT=/Users/atuladhar/projects/projects-from-backup/mulval/XSB
export PATH=$PATH:$XSBROOT/bin

# at: exporting SUMO_HOME for SUMO (Simulation of Urban Mobility)
export SUMO_HOME="/usr/local/opt/sumo/share/sumo"

# at: exporting flutter
export PATH=$PATH:/Users/atuladhar/flutter/bin

# at: exporting ruby
export PATH=/usr/local/opt/ruby/bin:$PATH

# at: exporting gcc ARM toolchain: gcc-arm-none-eabi-9-2019-q4-major
# Removing this. Installed the signed version using pkg.
#export PATH=$PATH:/usr/local/gcc-arm-none-eabi-9/bin
# at: adding gcc arm toolchain
# Installed again using pkg as this one is not signed.
#export PATH=$PATH:$HOME/opt/gcc-arm-none-eabi-9-2020-q2-update/bin
export PATH=$PATH:/System/Volumes/Data/Applications/ARM/bin/


# at: Adding alias for neovim
alias vim=/usr/local/bin/nvim
alias oldvim=/usr/bin/vim
export PATH="/usr/local/sbin:$PATH"

# at: adding alias for qemu-gnuarmeclipse
export PATH=$PATH:$HOME/opt/xPacks/qemu-arm/2.8.0-9/bin

# at: adding for gdb installation as directed by brew
export GUILE_LOAD_PATH="/usr/local/share/guile/site/3.0"
export GUILE_LOAD_COMPILED_PATH="/usr/local/lib/guile/3.0/site-ccache"
export GUILE_SYSTEM_EXTENSIONS_PATH="/usr/local/lib/guile/3.0/extensions"

# Created by `userpath` on 2020-07-10 12:51:41
export PATH="$PATH:/Users/atuladhar/.local/bin"

# at: Adding pipx auto completion
autoload -U bashcompinit
bashcompinit
eval "$(register-python-argcomplete pipx)"

# at: virtualenvwrapper
# at: .virtualenv was setup to use python3.7, which i have removed.
#export WORKON_HOME=$HOME/.virtualenvs
# at: this is using python3.8
#export WORKON_HOME=$HOME/.my-virtualenvs
#export PROJECT_HOME=$HOME/projects
# at: This is available in the path but adding it to make it verbose.
# python3 is linked to python3.8 during installation.
export VIRTUALENVWRAPPER_PYTHON="/usr/local/bin/python3"
# This was installed using pipx.
#export VIRTUALENVWRAPPER_VIRTUALENV=${HOME}/.local/bin/virtualenv
source /usr/local/bin/virtualenvwrapper.sh
