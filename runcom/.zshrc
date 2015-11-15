# If not running interactively, don't do anything

[ -z "$PS1" ] && return

DOTFILES_DIR="$HOME/.dotfiles"

for DOTFILE in "$DOTFILES_DIR"/system/.{function,env,path,alias,zsh,antigen}; do
    [ -f "$DOTFILE" ] && . "$DOTFILE"
done
