#                           _                      
#             ___    ___   | |_       _ _    __    
#     _      |_ /   (_-<   | ' \     | '_|  / _|   
#   _(_)_   _/__|   /__/_  |_||_|   _|_|_   \__|_  
# _|"""""|_|"""""|_|"""""|_|"""""|_|"""""|_|"""""| 
# "`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-' 
# 
#                                            ~ Adi


# export ZSH="$HOME/.oh-my-zsh"

# ZSH_THEME="spaceship"


eval "$(starship init zsh)"


export LC_ALL=en_US.UTF-8

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# plugins=(
#   git
#   osx
#   catimg
#   copyfile
#   extract
#   web-search
#   wd
#   fast-syntax-highlighting
#   dircycle
# )

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi


# === SOURCES ===

# source $ZSH/oh-my-zsh.sh
# source ~/.zsh_profile

# source ~/.config/.purepower

# source $HOME/.dotfiles/scripts/fzf.sh

# source ~/.bin/tmuxinator.zsh


# === ALIASES ===

alias lsa="ls -la"
alias la="ls -la"
alias lsl="ls -l"

alias cdd="cd ~/Documents/"

# alias m="itunes"

# alias cr="cargo run"
# alias cb="cargo build"

# alias td="todo"

# alias comp="g++ -I /usr/local/include/eigen3/"

alias vim="nvim"

# alias ff="fzf --preview 'bat --style=numbers --color=always {}'"

# alias gritt="/Users/adi/Documents/Code/Rust/grit/target/debug/grit"

alias wttr="curl wttr.in/Zurich"

alias sz="source .zshrc"

# alias neovim="~/.run/nvim-osx64/bin/nvim"

# alias b="buku --suggest"
# alias ddg="ddgr -n 8"

# alias bd=". bd -si"

# alias gs="vim '+Gedit:'"

# alias prp="pipenv run python3"

# alias c="clear"

# alias grep="ggrep"

# alias python="$(brew --prefix)/opt/python@3.8/bin/python3"
# alias pip="$(brew --prefix)/opt/python@3.8/bin/pip3"

# === commandline insert/normal mode ===
# (currently not in use as zsh vim mode breaks stuff)

# vim_ins_mode="I"
# vim_cmd_mode="N"
# vim_mode=$vim_ins_mode

# function zle-keymap-select {
#   vim_mode="${${KEYMAP/vicmd/${vim_cmd_mode}}/(main|viins)/${vim_ins_mode}}"
#   __promptline
#   zle reset-prompt
# }
#   zle -N zle-keymap-select

# function zle-line-finish {
#   vim_mode=$vim_ins_mode
# }
# zle -N zle-line-finish

# function TRAPINT() {
#   vim_mode=$vim_ins_mode
#   return $(( 128 + $1 ))
# }


# === EXPORTS ===

# export NVM_DIR="$HOME/.nvm"
#   [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# export PATH="$PATH:$HOME/.rvm/bin"

# export PATH="/usr/local/opt/ruby/bin:$PATH"
# export PATH="/usr/local/lib/ruby/gems/2.6.0/bin:$PATH"
# export PATH="/usr/local/Cellar/llvm/10.0.0_1/bin:$PATH"
# export PATH="/Users/adi/.composer/vendor/bin:$PATH"

# export FZF_DEFAULT_COMMAND='rg --hidden --ignore-file .git -l ""' 
export LDFLAGS="-L/usr/local/opt/libffi/lib"
export PKG_CONFIG_PATH="/usr/local/opt/libffi/lib/pkgconfig"


# === PROGRAMS ===

# eval $(thefuck --alias)

# . $HOME/.run/z.sh


# === AUTO COMPLETION ===

# Load Git completion
# zstyle ':completion:*:*:git:*' script ~/.dotfiles/.zsh/git-completion.bash
# fpath=(~/.dotfiles/.zsh $fpath)

# source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# autoload -Uz compinit && compinit

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/Users/adi/opt/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/Users/adi/opt/miniconda3/etc/profile.d/conda.sh" ]; then
#         . "/Users/adi/opt/miniconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/Users/adi/opt/miniconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# <<< conda initialize <<<


# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
