# Shortcuts
alias _="sudo"
alias reload!=". ~/.zshrc"

if is-osx; then
  alias o="open"
else
  alias open="clean-xdg-open"
  alias o="clean-xdg-open"
fi

# Folder Shortcut
alias p="cd ~/Projects/"
alias dl="cd ~/Downloads"

# grep
alias grep='grep --color=auto'

# ls
if is-osx; then
  alias ls="command ls -G"
else
  alias ls="command ls --color"
fi

# IP addresses
alias externalip="dig +short myip.opendns.com @resolver1.opendns.com"

if is-osx; then
  alias localip="ipconfig getifaddr en0"
else
  alias localip="ip addr show | grep -Po 'inet \K([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'"
fi

# mkdir
alias mkdir="mkdir -pv"

# clipboard
alias xclip="xclip -selection c"

# Set Undervolt
if ! is-osx; then
  alias under="sudo intel-undervolt apply"
fi

# Git
alias ggpf="ggpush --force-with-lease"

alias toggleLight="curl -s 'http://10.0.0.7/relay/0?turn=toggle' > /dev/null"