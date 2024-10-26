#                           _                      
#             ___    ___   | |_       _ _    __    
#     _      |_ /   (_-<   | ' \     | '_|  / _|   
#   _(_)_   _/__|   /__/_  |_||_|   _|_|_   \__|_  
# _|"""""|_|"""""|_|"""""|_|"""""|_|"""""|_|"""""| 
# "`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-' 
# 
#                                            ~ Adi


# === INITS ===

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"


# === SOURCES ===

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# === ALIASES ===

alias lsa="ls -la"
alias la="ls -lah"
alias lsl="ls -l"

alias tl="tmux ls"
alias tn="tmux new -s"
alias ta="tmux attach -t"
alias tk="tmux kill-session -t"

alias cdd="cd ~/Documents/"

alias vim="nvim"

alias ff="fzf --preview 'bat --style=numbers --color=always {}' --bind 'enter:become(nvim {})'"

alias wttr="curl wttr.in/Zurich"

alias sz="source .zshrc"


# === EXPORTS ===

export BAT_THEME="Dracula"

# export FZF_DEFAULT_COMMAND='rg --hidden --ignore-file .git -l ""' 

export LC_ALL=en_US.UTF-8

export LDFLAGS="-L/usr/local/opt/libffi/lib"
export PKG_CONFIG_PATH="/usr/local/opt/libffi/lib/pkgconfig"


# === PROGRAMS ===

# eval $(thefuck --alias)

zstyle ':completion:*' menu select


# === AUTO COMPLETION ===

# Load Git completion
# zstyle ':completion:*:*:git:*' script ~/.dotfiles/.zsh/git-completion.bash
# fpath=(~/.dotfiles/.zsh $fpath)

# source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

autoload -U compinit && compinit

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/adi/opt/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/adi/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/adi/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/adi/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
export PATH="/usr/local/sbin:$PATH"
