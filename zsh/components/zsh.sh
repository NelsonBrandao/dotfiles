## Settings
setopt autocd autopushd pushdminus pushdsilent pushdtohome cdablevars nomatch
DIRSTACKSIZE=5

# Enable extended globbing
setopt extendedglob

unsetopt beep notify

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
