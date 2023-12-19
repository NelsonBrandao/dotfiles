#!/usr/bin/env bash

source ./zsh/components/function.sh

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

    ln -sfv "$DOTFILES_DIR/zsh/.zshrc" ~
    ln -sfv "$DOTFILES_DIR/zsh/.antigenrc" ~
    ln -sfv "$DOTFILES_DIR/git/.gitconfig" ~
    ln -sfv "$DOTFILES_DIR/git/.gitignore_global" ~

    installAutomatorScripts;
    installRectangle;
}

installAutomatorScripts() {
    if is-osx; then
        cp -R $DOTFILES_DIR/automator-scripts/* ~/Library/Services
    fi
}

installRectangle() {
    if is-osx; then
        brew install --cask rectangle

        mkdir -p ~/Library/Application\ Support/Rectangle/
        cp ./rectangle/RectangleConfig.json ~/Library/Application\ Support/Rectangle/RectangleConfig.json

        defaults write com.knollsoft.Rectangle almostMaximizeWidth -float 0.80
    fi
}

case $COMMAND_NAME in
    "" | "-h" | "--help")
        help
        ;;
    *)
        shift
        ${COMMAND_NAME} $@
        if [ $? = 127 ]; then
            echo "'$COMMAND_NAME' is not a known command or has errors." >&2
            help
            exit 1
        fi
        ;;
esac
