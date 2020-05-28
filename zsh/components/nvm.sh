# NVM
export NVM_DIR="$HOME/.nvm"

[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"

# ZSH Hook
autoload -U add-zsh-hook
load-nvmrc() {
  if [[ -f .nvmrc && -r .nvmrc ]]; then
    nvm use > /dev/null
  fi
}
add-zsh-hook chpwd load-nvmrc
