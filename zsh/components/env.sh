# History
export HISTFILE=~/.histfile
export HISTSIZE=32768
export HISTFILESIZE=$HISTSIZE
export SAVEHIST=$HISTSIZE
export HISTCONTROL=ignoredups
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help"

# Ruby
export GEM_HOME=$(ruby -e 'puts Gem.user_dir')

# Android
export ANDROID_SDK_ROOT=/opt/android-sdk
export ANDROID_HOME=/opt/android-sdk
export NDK_ROOT=/opt/android-ndk

# GO
export GOPATH=~/Projects/go

# Misc
export EDITOR=nano
export DIFFPROG=meld
export TERM=xterm-256color

# NVM
export NVM_DIR="$HOME/.nvm"

# Python Cheat
export CHEATCOLORS=true

export BAT_THEME="TwoDark"
