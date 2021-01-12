!/bin/bash

# Install Packages
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  # TODO Setup linux setup
elif [[ "$OSTYPE" == "darwin"* ]]; then
  brew install fish
  # Add fish to the list of shells the system knows about
  if [[ $(cat /etc/shells | grep -c "fish") -eq 0 ]]
  then
    cat "usr/local/bin/fish" >> etc/shells
  fi

# Set the default shell to fish
chsh -s $(which fish)
