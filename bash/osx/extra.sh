#!/bin/bash

brew install eza bat

echo 'alias ls="eza --icons --header"' >> ~/.zshrc
echo 'alias tree="ls --tree"' >> ~/.zshrc
echo 'alias cat="bat"' >> ~/.zshrc
