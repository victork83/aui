# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
ZSH_THEME="agnoster"
export ZSH=/home/victor/.oh-my-zsh
export EDITOR="/bin/nano" 
#export ARDUINODIR=/usr/share/arduino
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

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
ENABLE_CORRECTION="true"

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
plugins=(git)

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
setopt autocd

autoload -U compinit && compinit

export RPROMPT='[%~] %T'

# Эта настройка установит тему walters для приглашения командной строки
# prompt bigfade

zmodload zsh/complist
zstyle ':completion:*' menu yes select

zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*:processes' command 'ps -xuf'
zstyle ':completion:*:processes' sort false
zstyle ':completion:*:processes-names' command 'ps xho command'

setopt CORRECT_ALL
SPROMPT="Ошибка! Вы хотели ввести %r вместо %R? ([Y]es/[N]o/[E]dit/[A]bort) "

case $TERM in
 xterm* | rxvt)
  preexec(){print -Pn "\e]0;$0\a"}
 ;;
esac

autoload -U predict-on
zle -N predict-on
zle -N predict-off
bindkey "^X^Z" predict-on # C-x C-z
bindkey "^Z" predict-off # C-z

autoload -U zcalc

ex () {
 if [ -f $1 ] ; then
   case $1 in
     *.tar.bz2) tar xvjf $1   ;;
     *.tar.gz)  tar xvzf $1   ;;
     *.tar.xz)  tar xvfJ $1   ;;
     *.bz2)     bunzip2 $1    ;;
     *.rar)     unrar x $1    ;;
     *.gz)      gunzip $1     ;;
     *.tar)     tar xvf $1    ;;
     *.tbz2)    tar xvjf $1   ;;
     *.tgz)     tar xvzf $1   ;;
     *.zip)     unzip $1      ;;
     *.Z)       uncompress $1 ;;
     *.7z)      7z x $1       ;;
     *)         echo "'$1' Не может быть распакован при помощи >ex<" ;;
   esac
 else
   echo "'$1' не является допустимым файлом"
 fi
}

pk () {
if [ $1 ] ; then
case $1 in
tbz)       tar cjvf $2.tar.bz2 $2      ;;
tgz)       tar czvf $2.tar.gz  $2       ;;
tar)      tar cpvf $2.tar  $2       ;;
bz2)    bzip $2 ;;
gz)        gzip -c -9 -n $2 > $2.gz ;;
zip)       zip -r $2.zip $2   ;;
7z)        7z a $2.7z $2    ;;
*)         echo "'$1' не может быть упакован с помощью pk()" ;;
esac
else
echo "'$1' не является допустимым файлом"
fi
}

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export GREP_COLORS="mt=33"
export GREP_OPTIONS='--color=auto'

HISTFILE=$HOME/.zsh_history
HISTSIZE=9999
SAVEHIST=9999
setopt extended_history
setopt inc_append_history
setopt share_history
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_reduce_blanks

alias df='df -h'
alias du='du -h --max-depth=1 | sort -h'
alias off='sleep 1; xset dpms force off'

alias grep="/usr/bin/grep $GREP_OPTIONS"
unset GREP_OPTIONS
zstyle ':completion:*' rehash true
