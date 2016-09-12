# Shortcuts
alias _="sudo"
alias o="open"
alias reload!=". ~/.zshrc"


# grep
alias grep='grep --color=auto'

# ls
alias l="ls -lahA"

# IP addresses
alias externalip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ip addr show | grep -Po 'inet \K([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'"

# mkdir
alias mkdir="mkdir -pv"

# xclip
alias xclip="xclip -selection c"
