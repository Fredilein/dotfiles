#
# Minimal .zshrc for use on VM's etc.
#

ZSH_THEME="spaceship"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi


# === SOURCES ===

source ~/.zsh_profile
source $HOME/.dotfiles/sh/fzf.sh


# === ALIASES ===

alias lsa="ls -la"
alias lsl="ls -l"

alias wttr="curl wttr.in/Zurich"

alias sz="source .zshrc"
