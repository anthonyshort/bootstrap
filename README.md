# dotfiles

Your dotfiles are how you personalize your system. 

- Anything with an extension of `.zsh` will get automatically included into your shell.
- Anything with an extension of `.symlink` will get symlinked without extension into `$HOME` when you run `script/bootstrap`.

## Components

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your
  environment.
- **topic/path.zsh**: Any file named `path.zsh` is loaded first and is
  expected to setup `$PATH` or similar.
- **topic/completion.zsh**: Any file named `completion.zsh` is loaded
  last and is expected to setup autocomplete.
- **topic/install.sh**: Any file named `install.sh` is executed when you run `script/install`. To avoid being loaded automatically, its extension is `.sh`, not `.zsh`.
- **topic/\*.symlink**: Any file ending in `*.symlink` gets symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `script/bootstrap`.

## Install

Run this:

```sh
git clone https://github.com/anthonyshort/bootstrap.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

This will symlink the appropriate files in `.dotfiles` to your home directory.
Everything is configured and tweaked within `~/.dotfiles`.

- The main file you'll want to change right off the bat is `zsh/zshrc.symlink`,
which sets up a few paths that'll be different on your particular machine.
- Add a `~/.localrc` file that will hold variables outside of the repo but they'll be loaded.

## Usage

### `dot`

`dot` is a simple script that installs some dependencies, sets sane macOS
defaults, and so on. Tweak this script, and occasionally run `dot` from
time to time to keep your environment fresh and up-to-date. You can find
this script in `bin/`.

## Stack

- Topnotch.app
- Cleanshot
- Magnet
- Chrome
- Raindrop
- zsh
- vscode
- Figma
- Mela
- Tweetbot
- Reeder
- Coinbase wallet
- Spotify
- Github CLI
- Homebrew

## Setup

- Install brew
- Install nvm
- Install node
- vscode `code` CLI
## Command reference

### Git

- `gl`: Pull and prune
- `glog`: Pretty logs
- `gc`: Commit
- `gca`: Commit all
- `gco`: Checkout
- `gcb`: Copy brand name
- `gb`: Branches
- `gs`: Status
- `gac`: Add all and commit

### System

- `reload`: Reload zsh
- `cls`: Clear screen
- `..`: Up directory
- `~`: Home
- `l`: List with colour
- `lt`: List by last modified
- `la`: List all except . and ..., color, mark file types, long form no user group, file size
- `lat`: List all except . and ..., color, mark file types, long form no use group, order by last modified, file size
- `emptytrash`: Empty the Trash on all mounted volumes and the main HDD
- `cleanlogs`: Clear Apple’s System Logs to improve shell startup speed
- `cleands`: Remove .DS_Store recursively 
- `showdotfiles`
- `hidedotfiles`