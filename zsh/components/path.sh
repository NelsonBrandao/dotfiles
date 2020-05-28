# Ruby
prepend-path "$GEM_HOME/bin"

# Android
append-path "$ANDROID_HOME/emulator"
append-path "$ANDROID_HOME/tools"
append-path "$ANDROID_HOME/tools/bin"
append-path "$ANDROID_HOME/platform-tools"

# GO
prepend-path "$GOPATH/bin"

# Rust
prepend-path "$HOME/.cargo/bin"

if is-osx; then
  prepend-path "/usr/local/bin"
  prepend-path "/usr/local/sbin"
  append-path "$HOME/Library/Python/3.7/bin"
fi
