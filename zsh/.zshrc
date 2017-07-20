# If not running interactively, don't do anything

[ -z "$PS1" ] && return

DOTFILES_DIR="$HOME/.dotfiles"

for DOTFILE in "$DOTFILES_DIR"/zsh/components/{function,env,path,antigen,zsh,alias,nvm,misc}.sh; do
    [ -f "$DOTFILE" ] && . "$DOTFILE"
done