# History
export HISTFILE=~/.histfile
export HISTSIZE=32768
export HISTFILESIZE=$HISTSIZE
export SAVEHIST=$HISTSIZE
export HISTCONTROL=ignoredups
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help"

# Ruby
export GEM_HOME="$HOME/.gem"

# Android
if is-osx; then
  export ANDROID_HOME="$HOME/Library/Android/sdk/"
else
  export ANDROID_SDK_ROOT=/opt/android-sdk
fi

# GO
export GOPATH=~/Projects/go

# Misc
export EDITOR=nano
# export DIFFPROG=meld
export TERM=xterm-256color

# NVM
export NVM_DIR="$HOME/.nvm"

export BAT_THEME="TwoDark"

if is-osx; then
  export HOMEBREW_NO_ANALYTICS=1
fi