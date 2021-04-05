# If not running interactively, don't do anything
[ -z "$PS1" ] && return

DOTFILES_DIR="$HOME/.dotfiles"

for DOTFILE in "$DOTFILES_DIR"/zsh/components/{function,env,path,zplug,spaceship,zsh,alias,nvm,tilix}.sh; do
    [ -f "$DOTFILE" ] && . "$DOTFILE"
done

[ -f "$HOME/.zshrc.local" ] && source "$HOME/.zshrc.local"
