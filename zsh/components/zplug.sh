export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug "robbyrussell/oh-my-zsh",             as:plugin,      use:"lib/{completion,theme-and-appearance}.zsh"
zplug "plugins/git",                        from:oh-my-zsh
zplug "zsh-users/zsh-syntax-highlighting"

zplug "denysdovhan/spaceship-prompt", use:spaceship.zsh, from:github, as:theme

if ! zplug check; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load

