# Abhay's MacOS Dotfiles

Decided to organize my configuration for future reproducability as well as archival purposes :)

This is done on MacOS, though I should be able to reproduce something similar in a Linux system (by using different commands and other minimal changes).

## Reproducing setup on a Mac

#### Installing homebrew + packages

(Refer to https://brew.sh)
```zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Then using brew, install the following packages
```zsh
# Formulae (Command Line Applications)
brew install antidote starship tre-command wget # Shell
brew install fastfetch pipes-sh # Fun shell stuff
brew install node openjdk gh # Dev Tools (Dec 2025)

# Casks (GUI applications)
brew install --cask ghostty font-fira-code-nerd-font # Terminal and Font
brew install --cask battery-toolkit bitwarden # Utilities
brew install --cask brave-browser firefox # Web Browsers
brew install --cask visual-studio-code # Dev Tools (Dec 2025)
brew install --cask amazon-chime microsoft-office microsoft-auto-update # Corporate Apps
brew install --cask notion plex spotify vesktop # Productivity and Fun
```

To do an update/upgrade of these applications
```zsh
brew update # Update homebrew itself
brew upgrade # Update formulae/casks
brew cleanup # Clean old versions
```

#### Reproducing folders

Folder structure I use
```md
Music
-> Spotify
    -> Songs (mp3s) / Albums (Directories)
Pictures
-> Screen Recordings
-> Wallpapers
-> Random
Desktop
dev
-> java
-> web
-> misc
-> **dotfiles**
-> (make dirs as needed to sort via primary language)
    -> git repos for different projects
Documents
-> misc
-> Work
-> Sensitive
-> School
Downloads
```

#### Reproducing configuration

Managing dotfiles is done through GNU `stow` in my setup.
For dotfiles
```zsh
cd ~/dev
git clone https://github.com/abhay7dev/dotfiles
cd dotfiles
stow . -t $HOME # stow by default looks 1 directory up, but my setup has $HOME 2 directories up
```

`stow` will create symlinks from the root to my `~/dev/dotfiles` folder, so I can keep effectively store dotfiles while allowing for easy configuration.

Stow References:
* [Useful YT Video (Dreams of Autonomy)](https://www.youtube.com/watch?v=y6XCebnB9gs)
* [Useful Article (tamerlan)](https://tamerlan.dev/how-i-manage-my-dotfiles-using-gnu-stow/)

### Changelog
Dec 23, 2025 - Initialized Repository. Contains solely my terminal configuration and some commands