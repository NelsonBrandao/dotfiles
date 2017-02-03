# NVM
source /usr/share/nvm/init-nvm.sh

# ZSH Hook
autoload -U add-zsh-hook
load-nvmrc() {
  if [[ -f .nvmrc && -r .nvmrc ]]; then
    nvm use > /dev/null
  fi
}
add-zsh-hook chpwd load-nvmrc
