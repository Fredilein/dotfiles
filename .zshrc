#                           _                      
#             ___    ___   | |_       _ _    __    
#     _      |_ /   (_-<   | ' \     | '_|  / _|   
#   _(_)_   _/__|   /__/_  |_||_|   _|_|_   \__|_  
# _|"""""|_|"""""|_|"""""|_|"""""|_|"""""|_|"""""| 
# "`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-' 
# 
#                                            ~ Adi

# Path to your oh-my-zsh installation.
export ZSH="/Users/adi/.oh-my-zsh"

ZSH_THEME="spaceship"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  osx
  catimg
  copyfile
  extract
  web-search
  wd
  fast-syntax-highlighting
  dircycle
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




# ---- Own Config begins here ----

export EDITOR='nvim'


source ~/.zsh_profile

# alias ls="colorls -1"
# alias lsa="colorls -lA --sd"
# alias lst="colorls --tree"
# alias lsl="colorls -1A"
alias lsa="ls -la"
alias lsl="ls -l"

alias cdd="cd ~/Documents/"

alias m="itunes"

alias cr="cargo run"
alias cb="cargo build"

alias td="todo"

alias comp="g++ -I /usr/local/include/eigen3/"

alias vim="nvim"

alias ff="fzf --preview 'bat --style=numbers --color=always {}'"

alias gritt="/Users/adi/Documents/Code/Rust/grit/target/debug/grit"

alias wttr="curl wttr.in/Zurich"

alias sz="source .zshrc"

alias neovim="~/.run/nvim-osx64/bin/nvim"

alias b="buku --suggest"
alias ddg="ddgr -n 8"


vim_ins_mode="I"
vim_cmd_mode="N"
vim_mode=$vim_ins_mode

function zle-keymap-select {
  vim_mode="${${KEYMAP/vicmd/${vim_cmd_mode}}/(main|viins)/${vim_ins_mode}}"
  __promptline
  zle reset-prompt
}
  zle -N zle-keymap-select

function zle-line-finish {
  vim_mode=$vim_ins_mode
}
zle -N zle-line-finish

function TRAPINT() {
  vim_mode=$vim_ins_mode
  return $(( 128 + $1 ))
}


source ~/.config/.purepower

eval $(thefuck --alias)

export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm


source $HOME/.dotfiles/sh/fzf.sh
. $HOME/.run/z.sh

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/lib/ruby/gems/2.6.0/bin:$PATH"

source ~/.bin/tmuxinator.zsh


# Load Git completion
zstyle ':completion:*:*:git:*' script ~/.dotfiles/.zsh/git-completion.bash
fpath=(~/.dotfiles/.zsh $fpath)

autoload -Uz compinit && compinit
