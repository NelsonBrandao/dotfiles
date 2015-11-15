#!/usr/bin/env bash

BIN_NAME=$(basename "$0")
COMMAND_NAME=$1
SUB_COMMAND_NAME=$2

DOTFILES_DIR="$HOME/.dotfiles"

help() {
    echo "Usage: $BIN_NAME <command>"
    echo
    echo "Commands:"
    echo "   help               This help message"
    echo "   reload             Reload dotfiles"
    echo "   install            Pull changes from repo and install new version"
}

reload() {
    . ~/.zshrc && echo "Zsh reloaded."
}

install() {
    [ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master

    ln -sfv "$DOTFILES_DIR/runcom/.zshrc" ~
    ln -sfv "$DOTFILES_DIR/git/.gitconfig" ~
    ln -sfv "$DOTFILES_DIR/git/.gitignore_global" ~
}
