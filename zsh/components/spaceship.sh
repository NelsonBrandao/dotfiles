SPACESHIP_RPROMPT_ADD_NEWLINE=true
SPACESHIP_PROMPT_ORDER=(
  dir
  git_branch
  host
  kubectl
  char
)
SPACESHIP_RPROMPT_ORDER=(
  node
  git_status
  battery
)

# Prompt
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SYMBOL="→"

# Host
SPACESHIP_HOST_SHOW=true
SPACESHIP_HOST_PREFIX=" at "
SPACESHIP_HOST_SUFFIX=""

# Dir
SPACESHIP_DIR_SUFFIX=""
SPACESHIP_DIR_TRUNC=1
SPACESHIP_DIR_TRUNC_REPO=false
SPACESHIP_DIR_COLOR="green"

# Git_branch
SPACESHIP_GIT_BRANCH_PREFIX="%F{011}:%F{014}"
SPACESHIP_GIT_BRANCH_COLOR="cyan"

# Git_status
SPACESHIP_GIT_STATUS_PREFIX=" "
SPACESHIP_GIT_STATUS_SUFFIX=""
SPACESHIP_GIT_STATUS_ADDED="%F{010}✚%F{014}"
SPACESHIP_GIT_STATUS_MODIFIED="%F{011}✹%F{014}"
SPACESHIP_GIT_STATUS_STASHED=""
SPACESHIP_GIT_STATUS_DELETED="%F{009}✖%F{014}"
SPACESHIP_GIT_STATUS_UNMERGED="§"
SPACESHIP_GIT_STATUS_COLOR="cyan"

# Char
SPACESHIP_CHAR_PREFIX=" "
SPACESHIP_CHAR_COLOR_SECONDARY="blue"
SPACESHIP_CHAR_COLOR_SUCCESS=$SPACESHIP_CHAR_COLOR_SECONDARY
SPACESHIP_CHAR_COLOR_FAILURE="red"

# Battery
SPACESHIP_BATTERY_THRESHOLD="10"
