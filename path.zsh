# Make sure coreutils are loaded before system commands
# I've disabled this for now because I only use "ls" which is
# referenced in my aliases.zsh file directly.
#export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"

# Local bin directories before anything else
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="$HOME/.fastlane/bin:$PATH"

# Where to find the zsh history 
export HISTFILE=${HOME}/.zsh_history

# Customize to your needs...
export PATH=$PATH:~/.bin

# Locales 
export LANG=en_GB.UTF-8
export LC_ALL=en_GB.UTF-8

# For compilers to find zlib you may need to set:
export LDFLAGS="${LDFLAGS} -L/usr/local/opt/zlib/lib"
export CPPFLAGS="${CPPFLAGS} -I/usr/local/opt/zlib/include"

# For pkg-config to find zlib you may need to set:
export PKG_CONFIG_PATH="${PKG_CONFIG_PATH} /usr/local/opt/zlib/lib/pkgconfig"

# For erlang installations, removes java dependency
export KERL_CONFIGURE_OPTIONS="--disable-debug --without-javac"

# iex history
export ERL_AFLAGS="-kernel shell_history enabled"

# default node.js environment
export NODE_ENV="development"

# set up hh colours
export HSTR_CONFIG=hicolor,case-sensitive
export HSTR_CONFIG=keywords-matching,hicolor,debug

export ASDF_DIR=$(brew --prefix asdf)
