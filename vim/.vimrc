" .vimrc


" The arch-wiki suggests these two lines to enable synax highlighting
filetype plugin on
syntax on 

set nocompatible		" Discard VI-compatibillity
set modelines=0 		" To prevent some exploits, apparently

let mapleader=','
             

""""""""""""""""""""""""""Tuning the typing experience""""""""""""""""""""""""""

set number              " Display line numbers.
set ruler               " Display cursor position in the lr-corner.
set relativenumber 
set colorcolumn=+1

" Formatting
set textwidth=80
set nowrap
set list                " Display some nonprintable characters, e.g. tabs or eol
set listchars=tab:▸\ ,extends:❯,precedes:❮

" Tabs
set smartindent         " Do smart autoindenting when starting a new line.
set expandtab			" Spaces for tabs.
set tabstop=4			" How many columns that makes a tab.
set shiftwidth=4		" 'Number of spaces to use for each step of (auto)indent'
set softtabstop=4		" Sapaces used when 'inserting' tabs?


""""""""""""""""""""""""""""""""Corpus interaction""""""""""""""""""""""""""""""

" Searching
set ignorecase
set smartcase           " Don't ignore case when search pattern contains upper-case characters.
set showmatch 
set incsearch           " Search while typing. Neat!
set hlsearch            " Highlight sealch-pattern matches.

" Clear the previous search to rid the editor of highlighting
nnoremap <leader><space> :noh<cr>


""""""""""""""""""""""""""""""""""""""Remaps""""""""""""""""""""""""""""""""""""

" Use htns to navigate cursor
" noremap h h
noremap t j
noremap n k
noremap s l

" Make tab match bracket pairs.
nnoremap <tab> %
vnoremap <tab> %
 
 " Toggle [i]nvisible characters
 nnoremap <leader>i :set list!<cr>


""""""""""""""""""""""""""""""""""""Backups"""""""""""""""""""""""""""""""""""""

set backup                        " Enable backups.
set noswapfile                    " Grow up, Vim.

set undodir=~/.vim/tmp/undo//     " Undo file directory.
set backupdir=~/.vim/tmp/backup// " Backups directory.

" Make those folders automatically if they don't already exist.
if !isdirectory(expand(&undodir))
    call mkdir(expand(&undodir), "p")
endif
if !isdirectory(expand(&backupdir))
    call mkdir(expand(&backupdir), "p")
endif
if !isdirectory(expand(&directory))
    call mkdir(expand(&directory), "p")
endif
