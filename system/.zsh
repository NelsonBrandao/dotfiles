# Settings
setopt autocd nomatch
unsetopt beep notify


# Keybing
typeset -A key

key[Up]=${terminfo[kcuu1]}
key[Down]=${terminfo[kcud1]}

[[ -n "${key[Up]}"       ]]  && bindkey  "${key[Up]}"       history-beginning-search-backward
[[ -n "${key[Down]}"     ]]  && bindkey  "${key[Down]}"     history-beginning-search-forward
