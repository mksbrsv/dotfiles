# ENVIROMENT VARIABLES #
export PATH=$HOME/bin:/usr/local/bin:$PATH:$HOME/.cargo/bin:$HOME/sdk/flutter/bin:$HOME/.local/apps/android-studio/bin:$HOME/.dotnet
export DOTFILES=$HOME/.config/nvim
export VISUAL=nvim
export EDITOR=nvim


# Path to your oh-my-zsh installation.
export ZSH="/home/mksbrsv/.oh-my-zsh"

# Path to rofi
export PATH=$HOME/.config/rofi/bin:$PATH
# END OF ENVIROMENT VARIABLES #

# PROMPT CONFIGURATION #
ZSH_THEME="spaceship"
SPACESHIP_CHAR_SYMBOL="❯ "
SPACESHIP_VI_MODE_INSERT="↑"
SPACESHIP_VI_MODE_NORMAL="↓"
SPACESHIP_VI_MODE_COLOR=magenta
SPACESHIP_BATTERY_SHOW=false
# END OF PROMPT CONFIGURATION #

# Reminder me to update when it's time
zstyle ':omz:update' mode reminder

# Uncomment the following line if pasting URLs and other text is messed up.
DISABLE_MAGIC_FUNCTIONS="true"

# Enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Oh-my-zsh plugins
plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
	zsh-z
	tmux
	)

source $ZSH/oh-my-zsh.sh

# export MANPATH="/usr/local/man:$MANPATH"

# Language environment
export LANG=en_US.UTF-8

# USER CONFIGURATION #
# Tmux plugin configuration
ZSH_TMUX_AUTOSTART=true
ZSH_TMUX_CONFIG='$HOME/.config/tmux/tmux.conf'
ZSH_TMUX_AUTOCONNECT=true
ZSH_TMUX_UNICODE=true

# END OF USER CONFIGURATION #

# USER FUNCTIONS #
# Function to extract all kind of archives
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

initcpp() {
  mkdir $1;
  cd $1;
  touch $1.cpp;
  echo 'int main() {}' > $1.cpp;
  cd ..;
}
# END OF USER FUNCTIONS #

# USER ALIASES #

# Program aliases
alias edge="microsoft-edge-stable"
alias telegram="telegram-desktop"
alias nv="nvim"

# Config aliases
alias rzsh="source ~/.zshrc"
alias zshc="nvim ~/.zshrc"
alias nvic="nvim ~/.config/nvim/init.vim"
alias alac="nvim ~/.config/alacritty/alacritty.yml"
alias bspwc="nvim ~/.config/bspwm/bspwmrc"
alias sxhc="nvim ~/.config/sxhkd/sxhkdrc"
alias polc="nvim ~/.config/polybar/config"
alias notes="nvim ~/stuff/notes.md"

# Change standart ls to exa
alias ls="exa -la --color=always --icons --group-directories-first"
alias la="exa -a --color=always --icons --group-directories-first"
alias ll="exa -l --color=always --icons --group-directories-first"
alias lt="exa -aT --color=always --icons --group-directories-first"

#tmux alieases
alias ta='tmux attach -t'
alias tad='tmux attach -d -t'
alias ts='tmux new-session -s'
alias tl='tmux list-sessions'
alias tksv='tmux kill-server'
alias tkss='tmux kill-session -t'

#programming aliases
alias build="cmake .. && make" # Run this in build folder of cpp project


# END OF USER ALIASES #


# Use dt's colorscipt
colorscript random

# Enable vi-mode in terminal
bindkey -v

alias luamake=/home/mksbrsv/.config/nvim/lua-language-server/3rd/luamake/luamake
