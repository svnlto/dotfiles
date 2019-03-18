# Shortcuts
alias copyssh="pbcopy < $HOME/.ssh/id_rsa.pub"
alias reloadcli="source $HOME/.zshrc"
alias reloaddns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
alias ll="$(brew --prefix coreutils)/libexec/gnubin/ls -ahlF --color --group-directories-first"
alias c="clear"

# Directories
alias dotfiles="cd $DOTFILES"
alias projects="cd $HOME/Projects"

# JS
alias nfresh="rm -rf node_modules/ package-lock.json && npm install"

# Docker
alias docker-composer="docker-compose"
#alias dstop="docker stop $(docker ps -a -q)"
#alias dpurgecontainers="dstop && docker rm $(docker ps -a -q)"
#alias dpurgeimages="docker rmi $(docker images -q)"
#dbuild() { docker build -t=$1 .; }
#dbash() { docker exec -it $(docker ps -aqf "name=$1") bash; }

# Git
alias commit="git add . && git commit -m"
alias gcommit="git add . && git commit"
alias wip="commit wip"
alias gst="git status"
alias gb="git branch"
alias gc="git checkout"
alias gd="git diff"
alias gl="git log --oneline --decorate --color"
alias gnuke="git clean -df && git reset --hard"
alias git-prune='git branch --merged | egrep -v "(^\*|master|develop)" | xargs git branch -d'
