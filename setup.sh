#!/bin/zsh
# Sets up a Mac from this repo. Safe to re-run.
set -e
DOTFILES="${0:A:h}"

# 1. Homebrew
if ! command -v brew >/dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
eval "$(/opt/homebrew/bin/brew shellenv)"
grep -q 'brew shellenv' ~/.zprofile 2>/dev/null || echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile

# 2. Everything in the Brewfile
brew bundle --file "$DOTFILES/Brewfile" || echo "Some Brewfile items failed (see above). Continuing."

# 3. Claude Code CLI (self-updating, kept out of brew on purpose)
command -v claude >/dev/null || curl -fsSL https://claude.ai/install.sh | bash

echo "Done. Open a new terminal tab."
