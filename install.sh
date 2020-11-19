#!/bin/sh

echo "Setting up your Mac..."

# Check for Homebrew and install if we don't have it
if test ! "$(command -v brew)"; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew recipes
brew update --force # https://github.com/Homebrew/brew/issues/1151

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle

# Make ZSH the default shell environment
chsh -s "$(command -v zsh)"

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf "$HOME/.zshrc"
ln -s "$HOME/.dotfiles/.zshrc" "$HOME/.zshrc"

# Removes nvim from config (if it exists) and symlinks the nvim dir from the .dotfiles
rm -rf "$HOME/.config/nvim"
ln -s "$HOME/.dotfiles/nvim/" "$HOME/.config/nvim"

# Move alacritty config
rm -rf "$HOME/.config/alacritty"
ln -s "$HOME/.dotfiles/config/alacritty" "$HOME/.config/alacritty"

# Symlink the ssh config file to the home directory
ln -s "$HOME/.dotfiles/.ssh/" "$HOME/.ssh"

# Symlink the git config file to the home directory
ln -s "$HOME/.dotfiles/.gitconfig" "$HOME/.gitconfig"
ln -s "$HOME/.dotfiles/.gitignore_global" "$HOME/.gitignore_global"

# Configures ASDF tool and default versions
ln -sf "$HOME/.dotfiles/.tool-versions" "$HOME/.tool-versions"
ln -sf "$HOME/.dotfiles/.default-gems" "$HOME/.default-gems"
ln -sf "$HOME/.dotfiles/.default-npm-packages" "$HOME/.default-npm-packages"

# Symlink tmux config file to the home directory
ln -s "$HOME/.dotfiles/.tmux.conf" "$HOME/.tmux.conf"

# Symlink global iex configuration
ln -s "$HOME/.dotfiles/.iex.exs" "$HOME/.iex.exs"

# Install tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Configures ASDF tool and default versions
ln -sf "$HOME/.dotfiles/.tool-versions" "$HOME/.tool-versions"
ln -sf "$HOME/.dotfiles/.default-gems" "$HOME/.default-gems"
ln -sf "$HOME/.dotfiles/.default-npm-packages" "$HOME/.default-npm-packages"

# Add ASDF plugins
asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git;
asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git;
asdf plugin-add golang https://github.com/kennyp/asdf-golang.git;
asdf plugin-add erlang https://github.com/asdf-vm/asdf-erlang.git;
asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git;
asdf plugin-add terraform https://github.com/Banno/asdf-hashicorp.git;
asdf plugin-add python https://github.com/danhper/asdf-python.git

# Install dependencies
asdf install

# Set macOS preferences
# We will run this last because this will reload the shell
. .macos
