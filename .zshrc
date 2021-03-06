# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="crunch"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git z virtualenvwrapper)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
# . ~/code/z/z.sh

# ssh aliases are here because I can't
# figure out how to add "ssh -t" option to .ssh/config.
# For more info, check .ssh/config and man ssh_config
alias raspi="ssh raspi -t tmux a"
alias nauha="ssh nauha -t tmux a"
alias utu="ssh utu -t tmux a"
alias skin="ssh skin -t tmux a"
alias iki="ssh iki -t tmux a"
alias kapsi="ssh kapsi -t tmux a"

alias howto="~/storage/gitOpiskelu/wikidata/howto/howto"
alias saa="~/code/weather/w.sh"
alias cal="ncal -C"

alias t=task
alias in='task add +in'
alias tick=tickle
alias think='tickle +1d'
tickle () {
    deadline=$1
    shift
    in +tickle wait:$deadline $@
}

export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)
export JAVA_10_HOME=$(/usr/libexec/java_home -v10.0)
alias java8='export JAVA_HOME=$JAVA_8_HOME'
alias java10='export JAVA_HOME=$JAVA_10_HOME'
#default java10
export JAVA_HOME=$JAVA_10_HOME
