export ZSH=$HOME/.zsh
export HISTSIZE=1000
export SAVEHIST=1000
export HISTFILE=$HOME/.zsh_history
export PATH=/home/h3x/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:$HOME/.cargo/bin
export BROWSER="firefox"

#Binds
bindkey -e 			# Bind emacs keymaps
bindkey "^[[1;5C" forward-word  # Bind CTL+> forward word
bindkey "^[[1;5D" backward-word # Bind CTL+< backward word

#Aliases
alias up="sudo zypper up"
alias dup="sudo zypper dup"
alias v="nvim"
alias ls='ls --color=auto'
alias mv='mv -v'
alias cp='cp -v'

#------------------
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
zstyle :compinstall filename '/home/h3x/.zshrc'

#Autocomplete
autoload -Uz compinit
compinit
_comp_options+=(globdots)

#Plugins
source $ZSH/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH/F-Sy-H/F-Sy-H.plugin.zsh

#Theme
source $ZSH/themes/spaceship-prompt/spaceship.zsh-theme
SPACESHIP_PROMPT_ORDER=(
  time          # Time stamps
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  exec_time     # Execution time
  git           # Git section (git_branch + git_status)
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)


SPACESHIP_USER_SHOW=always
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SYMBOL=">>>"
SPACESHIP_CHAR_SUFFIX=" "
SPACESHIP_DIR_PREFIX=""


