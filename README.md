# Vim Backstate [![Build Status](https://travis-ci.org/tweetjay/vim-backstate.svg?branch=master)](https://travis-ci.org/tweetjay/vim-backstate)

<!--![vim-backstate](https://raw.githubusercontent.com/tweetjay/vim-backstate/master/images/backstate-logo.png)-->

This plugin contains useful backup settings for Vim. This plugin enables Vim capabilities for saving the current state of the view, undo, backup and swap files.

- [Installation](#installation)
- [License](#license)
- [Description](#description)

## Description

These files are saved in your `~/.vim/` folder with the following structure:

- `backups/`
- `views/`
- `swaps/`
- `undos/`

The following default settings are made:

- `updatecount=50`: Save to the swap file every `50` characters
- `undolevels=100`: Save `100` levels of undo
- `undoreload=100`: Reload these `100` undo levels on buffer reload
- `viminfo='20,<50,:100,n$HOME/.nviminfo`

## Installation

Use your favorite plugin manager.

Using [vim-plug](https://github.com/junegunn/vim-plug):

    Plug 'tweetjay/vim-backstate'

# License

[MIT][mit] [Johannes Steudle][author] <!-- et [al][contributors] -->

[mit]:            https://opensource.org/licenses/MIT
[author]:         https://github.com/tweetjay
<!--- [contributors]:   https://github.com/{{USER}}/theme-tweetjay/graphs/contributors -->

[license-badge]:  https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square
