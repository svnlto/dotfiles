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

# Removes nvim from config (if it exists) and symlinks the nvim dir from the .dotfiles
rm -rf $HOME/.config/nvim
ln -s $HOME/.dotfiles/nvim/ $HOME/.config/nvim

# Symlink the .gitconfig file to the home directory
ln -s $HOME/.dotfiles/.gotconfig $HOME/.gitconfig

# Configures ASDF tool and default versions
ln -sf $HOME/.dotfiles/.tool-versions $HOME/.tool-versions
ln -sf $HOME/.dotfiles/.default-gems $HOME/.default-gems
ln -sf $HOME/.dotfiles/.default-npm-packages $HOME/.default-npm-packages

# Install asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf
git checkout -b v0.7.0

# Add ASDF plugins
asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git;
asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git;
asdf plugin-add golang https://github.com/kennyp/asdf-golang.git;
asdf plugin-add erlang https://github.com/asdf-vm/asdf-erlang.git;
asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git;
asdf plugin-add terraform https://github.com/Banno/asdf-hashicorp.git;
asdf plugin-add python https://github.com/danhper/asdf-python.git

# Configures ASDF tool and default versions
ln -sf $HOME/.dotfiles/.tool-versions $HOME/.tool-versions
ln -sf $HOME/.dotfiles/.default-gems $HOME/.default-gems
ln -sf $HOME/.dotfiles/.default-npm-packages $HOME/.default-npm-packages

# Install dependencies
asdf install

number_of_cores=$(sysctl -n hw.ncpu)
$HOME/.asdf/bin/private/asdf-exec ruby bin/bundle config --global jobs $((number_of_cores - 1))

# Install tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Symlink tmux config file to the home directory
ln -s $HOME/.dotfiles/.tmux.conf $HOME/.tmux.conf

# Set macOS preferences
# We will run this last because this will reload the shell
source .macos
