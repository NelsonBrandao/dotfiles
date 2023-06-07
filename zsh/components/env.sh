# History
export HISTFILE=~/.histfile
export HISTSIZE=1000000000
export HISTFILESIZE=$HISTSIZE
export SAVEHIST=$HISTSIZE

# Setup Zsh cache (needed for fzf)
export ZSH_CACHE_DIR="${TMPDIR:-/tmp}"

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

export BAT_THEME="TwoDark"

# Disable Telemetry
if is-osx; then
  export HOMEBREW_NO_ANALYTICS=1
fi

export ASTRO_TELEMETRY_DISABLED=1
export GATSBY_TELEMETRY_DISABLED=1
export NEXT_TELEMETRY_DISABLED=1
export TELEMETRY_DISABLED=1
