# Path to your dotfiles installation.
export DOTFILES=$HOME/.dotfiles

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
HIST_STAMPS="dd/mm/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=$DOTFILES

if [[ ! -f /usr/local/bin/antibody ]]; then
  curl -sL git.io/antibody | sh -s
fi

antibody bundle < ~/.zsh-plugins.txt > ~/.zsh-plugins.sh

# PROMPT
SPACESHIP_CHAR_SYMBOL='➔ '
SPACESHIP_PROMPT_ADD_NEWLINE=true
SPACESHIP_PROMPT_SEPARATE_LINE=true
SPACESHIP_TIME_SHOW=false
SPACESHIP_VI_MODE_SHOW=false
SPACESHIP_DIR_PREFIX=false

# DOCKER
SPACESHIP_DOCKER_SHOW=false

# NVM
SPACESHIP_NODE_SHOW=true
SPACESHIP_NODE_SYMBOL='⬢'

# Elixir
SPACESHIP_ELIXIR_SHOW=true
SPACESHIP_ELIXIR_SYMBOL='⬢'

# Ruby
SPACESHIP_RUBY_SHOW=true
SPACESHIP_RUBY_SYMBOL='⬢'

# Go
SPACESHIP_GOLANG_SHOW=true
SPACESHIP_GOLANG_SYMBOL='⬢'

SPACESHIP_PACKAGE_SYMBOL=true
SPACESHIP_PACKAGE_SYMBOL='⬢'

SPACESHIP_PROMPT_ORDER=(
  time          # Time stampts section
  user          # Username section
  host          # Hostname section
  dir           # Current directory section
  git           # Git section (git_branch + git_status)
  node          # Node.js section
  elixir        # Elixir section
  ruby          # Ruby section
  golang        # Go section
  package       # npm
  docker        # Docker section
  line_sep      # Line break
  vi_mode       # Vi-mode indicator
  char          # Prompt character
)

# asdf
source $HOME/.asdf/asdf.sh
source $HOME/.asdf/completions/asdf.bash

# aliases
source $ZSH_CUSTOM/aliases.zsh

# path
source $ZSH_CUSTOM/path.zsh

# nvim
export NVIM_TUI_ENABLE_CURSOR_SHAPE=1
export EDITOR=nvim
export REACT_EDITOR=nvim

ulimit -n 4096

# iex history
export ERL_AFLAGS="-kernel shell_history enabled"

export NODE_ENV="development"
