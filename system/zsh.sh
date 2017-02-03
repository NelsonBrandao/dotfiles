## Settings
# awesome cd movements from zshkit
setopt autocd autopushd pushdminus pushdsilent pushdtohome cdablevars nomatch
DIRSTACKSIZE=5

# Enable extended globbing
setopt extendedglob

unsetopt beep notify

## Keybing
typeset -A key

key[Up]=${terminfo[kcuu1]}
key[Down]=${terminfo[kcud1]}

[[ -n "${key[Up]}"       ]]  && bindkey  "${key[Up]}"       history-beginning-search-backward
[[ -n "${key[Down]}"     ]]  && bindkey  "${key[Down]}"     history-beginning-search-forward

## Color
autoload -U colors
colors

export CLICOLOR=1
