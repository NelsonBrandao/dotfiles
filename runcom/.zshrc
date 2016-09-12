# If not running interactively, don't do anything

[ -z "$PS1" ] && return

DOTFILES_DIR="$HOME/.dotfiles"

for DOTFILE in "$DOTFILES_DIR"/system/{function,env,path,antigen,zsh,alias,nvm}.sh; do
    [ -f "$DOTFILE" ] && . "$DOTFILE"
done
