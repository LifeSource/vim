# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="lifesource"
ZSH_THEME="lifesource"
# Example aliases
alias sourceprofile="source ~/.bash_profile"
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias yap="yo app"
alias yapng="yo app:ng"
alias yapau="yo app:au"
alias yapmongo="yo app:mongo"
alias reactor="yo reactor"
alias v="vim"
alias vi="vim"
alias npr="npm run"
alias ya="yarn add"
alias yad="yarn add --dev"
alias yr="yarn remove"


#alias tmux="tmux -2"
export TERM="xterm-256color"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
#DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

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
plugins=(git node npm bower osx extract z)

# include Z, yo
. ~/z.sh

source $ZSH/oh-my-zsh.sh
source dnvm.sh

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH

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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

VIMRUNTIME="/usr/local/share/vim/vim74/"
alias vim="/usr/local/bin/vim"
# NODE Configuration
NPM_PACKAGES=/Users/kenrick/.npm-packages
prefix=/Users/kenrick/.npm-packages
NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
PATH="$NPM_PACKAGES/bin:$PATH"

source /usr/local/lib/dnx/bin/dnvm.sh

###-tns-completion-start-###
if [ -f /Users/kenrick/.tnsrc ]; then
    source /Users/kenrick/.tnsrc
fi
###-tns-completion-end-###

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting


# tabtab source for yo package
# uninstall by removing these lines or running `tabtab uninstall yo`
[[ -f /Users/kenrick/.npm-packages/lib/node_modules/yo/node_modules/tabtab/.completions/yo.zsh ]] && . /Users/kenrick/.npm-packages/lib/node_modules/yo/node_modules/tabtab/.completions/yo.zsh
