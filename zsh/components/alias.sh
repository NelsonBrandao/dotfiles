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

# AWS Backups
alias baws="AWS_PROFILE=backups aws"
alias backup-photos="baws s3 sync $HOME/Pictures/Camera\ Imports/ s3://nbrandao-backup-photos --exclude '*' --exclude '*.DS_Store*' --include '*.jpg' --include '*.JPG' --include '*.jpeg' --include '*.JPEG' --include '*.png' --include '*.PNG' --include '*.raf' --include '*.RAF'"
