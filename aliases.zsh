# Shortcuts
alias copyssh="pbcopy < $HOME/.ssh/id_rsa.pub"
alias reloadcli="source $HOME/.zshrc"
alias reloaddns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
alias ll="$(brew --prefix coreutils)/libexec/gnubin/ls -ahlF --color --group-directories-first"
alias c="clear"

# Directories
alias dotfiles="cd $DOTFILES"
alias projects="cd $HOME/Projects"
alias sites="cd /Volumes/GoogleDrive/My\ Drive/Sites"

# JS
alias nfresh="rm -rf node_modules/ package-lock.json && npm install"

# Docker
#alias dstop="docker stop $(docker ps -a -q)"
#alias dpurgecontainers="dstop && docker rm $(docker ps -a -q)"
#alias dpurgeimages="docker rmi $(docker images -q)"
#dbuild() { docker build -t=$1 .; }
#dbash() { docker exec -it $(docker ps -aqf "name=$1") bash; }

# Git
alias git-prune='git branch --merged | egrep -v "(^\*|master|develop)" | xargs git branch -d'
alias merge='git smart-merge'
alias pull='git smart-pull'

# TMUX
alias tmux="tmux -2"

# NVIM
alias vim="nvim"
