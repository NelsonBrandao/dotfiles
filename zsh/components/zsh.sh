## Settings

setopt autocd autopushd pushdminus pushdsilent pushdtohome cdablevars nomatch
DIRSTACKSIZE=5

# Enable extended globbing
setopt extendedglob

unsetopt beep notify

# Completion
zmodload -i zsh/complist

unsetopt menu_complete
unsetopt flowcontrol
setopt auto_menu
setopt complete_in_word
setopt always_to_end

zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z-_}={A-Za-z_-}' 'r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' special-dirs true
zstyle ':completion:*' list-colors ''
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01'
zstyle ':completion:*:cd:*' tag-order local-directories directory-stack path-directories
zstyle ':completion:*' use-cache yes
zstyle ':completion:*' cache-path $ZSH_CACHE_DIR
zstyle '*' single-ignored show

autoload -U +X bashcompinit && bashcompinit

## Keybing
bindkey "[D" backward-word
bindkey "[C" forward-word
bindkey "^[a" beginning-of-line
bindkey "^[e" end-of-line

bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward
bindkey '^r' history-incremental-search-backward

bindkey ' ' magic-space

## Color
autoload -U colors
colors

export CLICOLOR=1
