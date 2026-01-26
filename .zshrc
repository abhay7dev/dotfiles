#export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export EDITOR="nano"

HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase

setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_alldups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

alias neofetch='fastfetch'
alias tree='tre'

#alias l='ls -lah'
#alias la='ls -lAh'
#alias ll='ls -lh'
#alias ls='ls -G'
#alias lsa='ls -lah'

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors '${(s.:.)LS_COLORS}'

zstyle ':antidote:bundle' use-friendly-names 'yes'
source $(brew --prefix)/opt/antidote/share/antidote/antidote.zsh
antidote load

eval "$(starship init zsh)"

# --- eza overrides (must be last) ---
unalias ls 2>/dev/null
alias ls='eza --group-directories-first --icons'
alias l='eza -lah --group-directories-first --icons'
alias la='eza -lAh --group-directories-first --icons'
alias ll='eza -lh --group-directories-first --icons'
alias lsa='eza -lah --group-directories-first --icons'

neofetch -c $HOME/.config/fastfetch/config-small.jsonc
