# Ruby
prepend-path "$(ruby -rubygems -e 'puts Gem.user_dir')/bin"

# Android
prepend-path "$ANDROID_SDK_ROOT"
prepend-path "$ANDROID_SDK_ROOT/platform-tools"
prepend-path "$ANDROID_SDK_ROOT/tools"
prepend-path "$NDK_ROOT"

# GO
prepend-path "$GOPATH/bin"
