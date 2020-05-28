export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug "robbyrussell/oh-my-zsh",             as:plugin,      use:"lib/{compfix,completion,directories,git,grep,history,misc,termsupport,theme-and-appearance}.zsh"
zplug "plugins/git",                        from:oh-my-zsh
zplug "plugins/gitfast",                    from:oh-my-zsh
zplug "plugins/colored-man-pages",          from:oh-my-zsh
zplug "plugins/colorize",                   from:oh-my-zsh
zplug "plugins/kubectl",                    from:oh-my-zsh
zplug "zsh-users/zsh-syntax-highlighting"

zplug 'NelsonBrandao/absolute', as:theme

if ! zplug check; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load

