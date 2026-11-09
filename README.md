# dotfiles

## New Mac

1. Sign in to the App Store app.
2. In Terminal (accept the developer tools prompt if it appears, then re-run):
   ```bash
   git clone https://github.com/piotutic/dotfiles ~/dotfiles && zsh ~/dotfiles/setup.sh
   ```

## Notes

- DaVinci Resolve: `mas` can only re-download apps your Apple Account already owns.
  If it fails, click Get once in the App Store, then re-run setup.

## Day to day

```bash
brew bundle dump --force --file ~/dotfiles/Brewfile   # save newly installed apps
brew update && brew upgrade                           # update everything
brew bundle check --file ~/dotfiles/Brewfile          # anything missing?
brew bundle cleanup --file ~/dotfiles/Brewfile        # anything extra? (--force removes)
```
