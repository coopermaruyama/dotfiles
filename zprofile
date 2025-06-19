if [ -d "/opt/homebrew" ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
elif [ -d "~/.linuxbrew" ]; then
  eval "$(~/.linuxbrew/bin/brew shellenv)"
elif [ -d "/home/linuxbrew" ]; then
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

# Install apps / packages
if [ -f "$HOME/.Brewfile" ]; then
  if ! brew bundle check --file="$HOME/.Brewfile" &>/dev/null; then
    brew bundle install --file="$HOME/.Brewfile"
  fi
fi