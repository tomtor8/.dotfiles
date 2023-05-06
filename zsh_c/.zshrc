# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

##############
## SOURCING ##
##############

# zsh-autocomplete
if [[ -f /Users/tomastorday/.config/zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh ]]; then
  source /Users/tomastorday/.config/zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh
fi

# enable colors in autocomplete for directories, files, aliases and commands
export CLICOLOR=1
zstyle ':completion:*:default' list-colors ''
#zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
#zstyle ':completion:*' list-colors ''
zstyle ':completion:*:options' list-colors '=^(-- *)=34'
zstyle ':completion:*:aliases' list-colors '=*=2;38;5;128'
zstyle ':completion:*:commands' list-colors '=*=1;31'
zstyle ':completion:*:builtins' list-colors '=*=1;38;5;142'

# zsh-z 
if [[ -f /Users/tomastorday/.config/zsh/zsh-z.plugin.zsh ]]; then
  source /Users/tomastorday/.config/zsh/zsh-z.plugin.zsh
fi

# zsh-autosuggestions
if [[ -f $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]]; then
  source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

# styling of autosuggestions
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=8"

# ALIASES
source ~/.zshrc_aliases

# PATH
export PATH="$HOME/bin:/usr/local/sbin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

# fzf
export FZF_DEFAULT_OPTS='--height 50% --layout=reverse --border --inline-info --margin=1 --padding=1 --color=spinner:#fb4934,hl:#928374,fg:#ebdbb2,header:#928374,info:#8ec07c,pointer:#fb4934,marker:#fb4934,fg+:#ebdbb2,prompt:#fb4934,hl+:#fb4934'
export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--preview 'bat --color=always --style=numbers --line-range :500 {}'"

# nnn
if [[ -f /Users/tomastorday/.dotfiles/nnn_c/.config/nnn/nnn.config ]]; then
  source /Users/tomastorday/.dotfiles/nnn_c/.config/nnn/nnn.config
fi

# tere directory navigator
tere() {
    local result=$(command tere "$@")
    [ -n "$result" ] && cd -- "$result"
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# syntax highlighting
if [[ -f $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]]; then
  source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# my custom shell functions

if [[ -f /Users/tomastorday/.dotfiles/shellfunctions.sh ]]; then
  source /Users/tomastorday/.dotfiles/shellfunctions.sh
fi

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# starship
eval "$(starship init zsh)"
