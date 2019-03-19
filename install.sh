#!/bin/sh

echo "Setting up your Mac..."

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew recipes
brew update --force # https://github.com/Homebrew/brew/issues/1151

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle

# Make ZSH the default shell environment
chsh -s $(which zsh)

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

# Symlink the Mackup config file to the home directory
ln -s $HOME/.dotfiles/.mackup.cfg $HOME/.mackup.cfg

# Add ASDF plugins
asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git;
asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git;
asdf plugin-add golang https://github.com/kennyp/asdf-golang.git;
asdf plugin-add erlang https://github.com/asdf-vm/asdf-erlang.git;
asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git;
asdf plugin-add terraform https://github.com/Banno/asdf-hashicorp.git;

number_of_cores=$(sysctl -n hw.ncpu)
$HOME/.asdf/bin/private/asdf-exec ruby bin/bundle config --global jobs $((number_of_cores - 1))

# Configures ASDF tool versions
ln -sf "$HOME/.dotfiles/.tool-versions" "$HOME/.tool-versions"

# Install tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Symlink tmux config file to the home directory
ln -s $HOME/.dotfiles/.tmux.conf $HOME/.tmux.conf

# Install ruby gems
gem install git-smart

# Set macOS preferences
# We will run this last because this will reload the shell
source .macos
