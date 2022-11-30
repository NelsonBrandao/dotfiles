### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

# Oh-my-zsh snippets
zinit snippet "OMZ::lib/history.zsh"
zinit snippet "OMZ::lib/git.zsh"
zinit snippet "OMZ::plugins/git/git.plugin.zsh"
# zinit snippet OMZL::git
# zinit snippet OMZP::git

# Theme
zinit light spaceship-prompt/spaceship-prompt

# Modules
zinit light "zsh-users/zsh-completions"

zinit ice wait"0" lucid multisrc"shell/{completion,key-bindings}.zsh"
zinit light "junegunn/fzf"

zinit ice wait"0" lucid atinit"zpcompinit; zpcdreplay"
zinit light "zdharma-continuum/fast-syntax-highlighting"
