ZINIT_HOME="/opt/homebrew/opt/zinit"
source "${ZINIT_HOME}/zinit.zsh"

# Oh-my-zsh snippets
zinit snippet "OMZ::lib/history.zsh"

# Theme
zinit light spaceship-prompt/spaceship-prompt

# Modules
zinit light "zsh-users/zsh-completions"

zinit ice wait"0" lucid multisrc"shell/{completion,key-bindings}.zsh"
zinit light "junegunn/fzf"

zinit ice wait"0" lucid atinit"zpcompinit; zpcdreplay"
zinit light "zdharma-continuum/fast-syntax-highlighting"
