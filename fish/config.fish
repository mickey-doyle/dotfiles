# Homebrew Path Configuration
fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/sbin

# Personal Path Variables
fish_add_path /Users/mick/.local/bin
fish_add_path /Users/mick/.config/fish/conf.d
fish_add_path /usr/bin
fish_add_path /usr/local/share

# Go binary path
fish_add_path $HOME/go/bin

# Zig binary path
fish_add_path /usr/local/share/zig

# DOTNET_ROOT configuration
set -x DOTNET_ROOT /usr/local/share/dotnet

# Dotnet SDK Binary path
fish_add_path /usr/local/share/dotnet

# Make LunarVim default editor
export EDITOR='lvim'

# Aliases
alias ls="lsd"
alias zed="/usr/local/bin/zed"
alias nemo="vim ~/.config/fish/config.fish"
alias tom="vim ~/.config/kitty/kitty.conf"
alias keys="cat ~/.config/kitty/keybinds.conf"
alias aero="vim ~/.aerospace.toml"
alias kitty="/Applications/kitty.app/Contents/MacOS/kitty"
alias top="btop"
