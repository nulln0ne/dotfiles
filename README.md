## Useful settings

### 1. Finder Settings

Set list view as preferred view style in Finder:

```bash
defaults write com.apple.finder "FXPreferredViewStyle" -string "Nlsv" && killall Finder
```

Show folders first when sorting:

```bash
defaults write com.apple.finder "_FXSortFoldersFirst" -bool "true" && killall Finder
```

### 2. Keyboard Settings

Disable key repeat on hold (useful for vim):

```bash
defaults write NSGlobalDomain "ApplePressAndHoldEnabled" -bool "false"
```

Disable language input indicator:

```bash
defaults write kCFPreferencesAnyApplication TSMLanguageIndicatorEnabled -bool "false"
```

### 3. Homebrew

Install packages from Brewfile:

```bash
brew bundle --file=./brewfile
```

Disable Homebrew analytics:

```bash
brew analytics off
```

### 4. Touch ID for sudo

Enable Touch ID for sudo command:

```bash
cd /etc/pam.d
sudo cp sudo_local.template sudo_local
sudo pico sudo_local
```

In the opened file, find the line containing `pam_tid.so` and delete the hashtag (#) at the beginning. Save the file: `Control-X`, then `Y`, then `Return`.

### 5. Spotlight

Disable Spotlight indexing (optional):

```bash
sudo mdutil -i off
```

Delete existing Spotlight index:

```bash
sudo mdutil -E /
```
