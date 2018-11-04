# Vim Backstate [![Build Status](https://travis-ci.org/tweetjay/vim-backstate.svg?branch=master)](https://travis-ci.org/tweetjay/vim-backstate) [![MIT][license-badge]][mit-license]]

<!--![vim-backstate](https://raw.githubusercontent.com/tweetjay/vim-backstate/master/images/backstate-logo.png)-->

This plugin contains useful backup settings for Vim. This plugin enables Vim capabilities for saving the current state of the view, undo, backup and swap files.

- [Vim backstate](#vimbackstate)
    - [Description](#description)
    - [Installation](#installation)
- [License](#license)

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

This plugin is released under the [MIT license][mit-license].
© by [Johannes Steudle][github-profile].

[github-profile]: https://github.com/tweetjay
[mit-license]:    https://opensource.org/licenses/MIT
[license-badge]:  https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square
