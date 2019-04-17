# Path to your dotfiles installation.
export DOTFILES=$HOME/.dotfiles

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
HIST_STAMPS="dd/mm/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=$DOTFILES

autoload -Uz compinit
typeset -i updated_at=$(date +'%j' -r ~/.zcompdump 2>/dev/null || stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)
if [ $(date +'%j') != $updated_at ]; then
  compinit -i
else
  compinit -C -i
fi

zmodload -i zsh/complist

HISTFILE=$HOME/.zsh_history
HISTSIZE=100000
SAVEHIST=$HISTSIZE

setopt hist_ignore_all_dups # remove older duplicate entries from history
setopt hist_reduce_blanks # remove superfluous blanks from history items
setopt inc_append_history # save history entries as soon as they are entered
setopt share_history # share history between different instances of the shell

setopt auto_cd # cd by typing directory name if it's not a command
setopt correct_all # autocorrect commands

setopt auto_list # automatically list choices on ambiguous completion
setopt auto_menu # automatically use menu completion
setopt always_to_end # move cursor to end if word had one match

zstyle ':completion:*' menu select # select completions with arrow keys
zstyle ':completion:*' group-name '' # group results by category
zstyle ':completion:::::' completer _expand _complete _ignored _approximate # enable approximate matches for completion

if [[ ! -f /usr/local/bin/antibody ]]; then
  curl -sL git.io/antibody | sh -s
fi

# PROMPT
SPACESHIP_CHAR_SYMBOL='➔'
SPACESHIP_CHAR_SUFFIX=' '
SPACESHIP_PROMPT_ADD_NEWLINE=true
SPACESHIP_PROMPT_SEPARATE_LINE=true
SPACESHIP_DIR_PREFIX=false

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
  char          # Prompt character
)

source <(antibody init)
antibody bundle denysdovhan/spaceship-prompt
antibody bundle zsh-users/zsh-autosuggestions
antibody bundle zsh-users/zsh-completions
antibody bundle zdharma/fast-syntax-highlighting
antibody bundle zsh-users/zsh-history-substring-search
antibody bundle robbyrussell/oh-my-zsh path:plugins/git
antibody bundle robbyrussell/oh-my-zsh path:plugins/command-not-found
antibody bundle robbyrussell/oh-my-zsh path:plugins/common-aliases
antibody bundle kiurchv/asdf.plugin.zsh

# aliases
source $ZSH_CUSTOM/aliases.zsh

# path
source $ZSH_CUSTOM/path.zsh

# nvim
export EDITOR=nvim
export REACT_EDITOR=nvim

ulimit -n 4096

# iex history
export ERL_AFLAGS="-kernel shell_history enabled"

export NODE_ENV="development"
