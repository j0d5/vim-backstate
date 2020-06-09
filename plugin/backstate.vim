" {{{
" Maintainer: Johannes Steudle
" Version: 1.0
" }}}

if exists('g:loaded_backstate') || &compatible
  finish
else
  let g:loaded_backstate = 'yes'
endif

" Create directories for vim
function! InitializeDirectories()
  let separator = '.'
  let parent = $HOME
  let prefix = '.vim'
  let dir_list = {
        \ 'backups': 'backupdir',
        \ 'views': 'viewdir',
        \ 'swaps': 'directory',
        \ 'undos': 'undodir' }

  for [dirname, settingname] in items(dir_list)
    let directory = parent . '/' . prefix . '/' . dirname . '/'
    if exists('*mkdir')
      if !isdirectory(directory)
        call mkdir(directory)
      endif
    endif
    if !isdirectory(directory)
      echo 'Warning: Unable to create backup directory: ' . directory
      echo 'Try: mkdir -p ' . directory
    else
      let directory = substitute(directory, ' ', '\\\\ ', '')
      exec 'set ' . settingname . '=' . directory
    endif
  endfor
endfunction
call InitializeDirectories()
" }}}

" Backup and undo {{{
set writebackup      " Write a backup before overwriting a file. Afterwards remove the backupfile
set nobackup         " Disable persistent backups of the current edited file

set updatecount=50   " Write swap file to disk after every 50 characters
set undofile         " so is persistent undo ...
set undolevels=100   " maximum number of changes that can be undone
set undoreload=100   " maximum number lines to save for undo on a buffer reload
augroup viewstate
  au BufWinLeave ?* silent mkview   " make vim save view (state) (folds, cursor, etc)
  au BufWinEnter ?* silent loadview " make vim load view (state) (folds, cursor, etc)
augroup end
" }}}

" Save states {{{
" Remember things between sessions
" '20  - remember marks for 20 previous files
" \"50 - save 50 lines for each register
" :100  - remember 200 items in command-line history
" %    - remember the buffer list (if vim started without a file arg)
" n    - set name of viminfo file
if has('nvim')
  set viminfo='20,<50,:100,n$HOME/.nviminfo
else
  set viminfo='20,<50,:100,n$HOME/.viminfo
endif
" }}}

" vim:set ft=vim et sw=2:
