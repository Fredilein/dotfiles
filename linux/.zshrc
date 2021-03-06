#                           _                      
#             ___    ___   | |_       _ _    __    
#     _      |_ /   (_-<   | ' \     | '_|  / _|   
#   _(_)_   _/__|   /__/_  |_||_|   _|_|_   \__|_  
# _|"""""|_|"""""|_|"""""|_|"""""|_|"""""|_|"""""| 
# "`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-' 
# 
#                                            ~ Adi
#               ==== FOR LINUX ====
#                             


PROMPT='%F{red}%1~%f %# '

export LC_ALL=en_US.UTF-8

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(
  git
)

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi


# === SOURCES ===

source $HOME/.dotfiles/scripts/fzf.sh


# === ALIASES ===

alias lsa="ls -la"
alias lsl="ls -l"

alias cdd="cd ~/Documents/"

alias cr="cargo run"
alias cb="cargo build"

alias td="todo"

alias comp="g++ -I /usr/local/include/eigen3/"

alias vim="nvim"

alias ff="fzf --preview 'bat --style=numbers --color=always {}'"

alias wttr="curl wttr.in/Zurich"

alias sz="source .zshrc"

alias neovim="~/.run/nvim-osx64/bin/nvim"

alias b="buku --suggest"
alias ddg="ddgr -n 8"

alias bd=". bd -si"

alias gs="vim '+Gedit:'"

alias prp="pipenv run python3"

alias open="xdg-open"


# === EXPORTS ===

export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/lib/ruby/gems/2.6.0/bin:$PATH"


# === PROGRAMS ===

. $HOME/.dotfiles/scripts/z.sh


# === AUTO COMPLETION ===

# Load Git completion
zstyle ':completion:*:*:git:*' script ~/.dotfiles/.zsh/git-completion.bash
fpath=(~/.dotfiles/.zsh $fpath)

autoload -Uz compinit && compinit

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
