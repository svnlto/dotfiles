# Sven's Dotfiles

Basically a fork of [Dries's dotfiles](https://github.com/driesvints/dotfiles).

Adding asdf for dependency management, installing nodejs, elixir, erlang, golang, ruby and terraform.
As well as my custom zplug and tmux configuration.

### Setting up your Mac

1. Update macOS to the latest version with the App Store
2. Install Xcode from the App Store, open it and accept the license agreement
3. Install macOS Command Line Tools by running `xcode-select --install`
4. Copy your public and private SSH keys to `~/.ssh` and make sure they're set to `600`
5. Clone this repo to `~/.dotfiles`
6. Append `/usr/local/bin/zsh` to the end of your `/etc/shells` file
7. Run `install.sh` to start the installation
8. Restore preferences by running `mackup restore`
9. Restart your computer to finalize the process