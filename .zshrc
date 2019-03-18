# Path to your dotfiles installation.
export DOTFILES=$HOME/.dotfiles

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
HIST_STAMPS="dd/mm/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=$DOTFILES

if [[ ! -d ~/.zplug ]]; then
  git clone https://github.com/b4b4r07/zplug ~/.zplug
fi

source ~/.zplug/init.zsh

zplug "zsh-users/zsh-completions", use:src
zplug "zsh-users/zsh-autosuggestions", defer:3
zplug "zsh-users/zsh-syntax-highlighting", defer:3
zplug "zsh-users/zsh-history-substring-search", defer:3
zplug "kiurchv/asdf.plugin.zsh", defer:2

zplug "robbyrussell/oh-my-zsh", use:"lib/*.zsh", defer:0
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/github", from:oh-my-zsh
zplug "plugins/npm", from:oh-my-zsh
zplug "plugins/docker", from:oh-my-zsh
zplug "plugins/rsync", from:oh-my-zsh
zplug "plugins/command-not-found", from:oh-my-zsh

zplug "lukechilds/zsh-nvm", from:github
zplug "b4b4r07/emoji-cli", from:github

# Theme!
zplug "denysdovhan/spaceship-zsh-theme", use:spaceship.zsh, from:github, as:theme

zplug load

# Actually install plugins, prompt user input
if ! zplug check --verbose; then
  printf "Install zplug plugins? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

EMOJI_CLI_KEYBIND=^e

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

SPACESHIP_PACKAGE_SYMBOL=true
SPACESHIP_PACKAGE_SYMBOL='⬢'

# RUBY
SPACESHIP_RUBY_SHOW=false

SPACESHIP_PROMPT_ORDER=(
  time          # Time stampts section
  user          # Username section
  host          # Hostname section
  dir           # Current directory section
  git           # Git section (git_branch + git_status)
  node          # Node.js section
  elixir        # Elixir section
  ruby          # Ruby section
  go            # Go section
  package       # npm
  docker        # Docker section
  line_sep      # Line break
  vi_mode       # Vi-mode indicator
  char          # Prompt character
)

# asdf
source $HOME/.asdf/asdf.sh
source $HOME/.asdf/completions/asdf.bash

# nvim
export NVIM_TUI_ENABLE_CURSOR_SHAPE=1
export EDITOR=nvim
export REACT_EDITOR=nvim

ulimit -n 4096

# launch tmux
alias tmux="tmux -2"

# iex history
export ERL_AFLAGS="-kernel shell_history enabled"

export NODE_ENV="development"
