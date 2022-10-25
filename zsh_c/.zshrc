# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

##############
## SOURCING ##
##############

# zsh-autocomplete
source ~/.config/zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh
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
source ~/.config/zsh/zsh-z.plugin.zsh
# zsh-autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# styling of autosuggestions
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=8"

# ALIASES
source ~/.zshrc_aliases

# PATH
export PATH="$HOME/bin:/usr/local/bin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

# fzf
# tomasr/molokai theme

export FZF_DEFAULT_OPTS='--height 50% --layout=reverse --border --inline-info --margin=1 --padding=1 --color=spinner:#fb4934,hl:#928374,fg:#ebdbb2,header:#928374,info:#8ec07c,pointer:#fb4934,marker:#fb4934,fg+:#ebdbb2,prompt:#fb4934,hl+:#fb4934'
export FZF_DEFAULT_COMMAND='fd --type f --hidden'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--preview 'bat --color=always --style=numbers --line-range :500 {}'"

# fzf search hidden files
alias fzfh="fd --type f --hidden | fzf"
# find file and open with nvim
# alias vimf="vim $(fzf)"
# find hidden file and open with nvim
# alias vimh="vim $(fd --type f --hidden | fzf --preview 'bat --color=always {}')"

# nnn
source ~/.dotfiles/nnn_c/.config/nnn/nnn.config

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# this loads nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" 

# syntax highlighting
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
