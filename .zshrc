# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

#variable
user_login="prenom.nom@epitech.eu"
token=""

# Path to your oh-my-zsh installation.
  export ZSH="/home/alexis/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME=powerlevel10k/powerlevel10k
#ZSH_THEME="hyper-oh-my-zsh"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language`` environment
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

alias blih='blih -u prenom.nom@epitech.eu'
alias ns_auth='ns_auth -u prenom.nom@epitech.eu'

export PATH=$PATH:~/my_scripts/

alias us='setxkbmap us'
alias fr='setxkbmap fr'

alias vimrc='vim ~/.vimrc'
alias zshrc='vim ~/.zshrc'
alias i3='vim .config/i3/config'

alias lampp='sudo /opt/lampp/lampp'
alias ctlampp='sudo /opt/lampp/manager-linux-x64.run'

alias mf='make fclean'
alias mc='make clean'
alias mr='make re'
alias map='telnet mapscii.me'
alias Epitech='~/Epitech/2020/'
alias pull='git pull'
alias push='git push origin master'
alias commit='git commit -m'
alias add='git add'
alias status='git status'
alias branch='git branch'
alias change='git checkout'
alias log='git shortlog'
alias open='gio open'
alias setAcl='blih -u $user_login -t "" repository setacl $name_of_dir '
alias checkAcl='blih -u $user_login -t "" repository getacl'
alias repos='blih -u $user_login -t "" repository create $name_of_dir'

export PATH=$PATH:$home/linuxbrew/.linuxbrew/bin

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
