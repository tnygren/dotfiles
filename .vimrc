set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set hlsearch " hilighted search on (:nohlsearch turns off)
set number " line numbers
set t_Co=256

" Higlight unwanted space
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/

" Dash keybinding
" leader is normally \ but lets change that to comma ,
" After this Dash search ,d in normal mode
:let mapleader = ","
:nmap <silent> <leader>d <Plug>DashSearch

" vundle things
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
" My Bundles here:
"
" original repos on github
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "honza/vim-snippets"
Bundle "flazz/vim-colorschemes"
Bundle "rizzatti/funcoo.vim"
Bundle "rizzatti/dash.vim"
Bundle "vim-scripts/loremipsum"
Bundle "scrooloose/syntastic"
Bundle "scrooloose/nerdtree"
Bundle "scrooloose/nerdcommenter"
"" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
"" non github repos
"Bundle 'git://git.wincent.com/command-t.git'

" For some reason these should be kept in the last part of the file
syntax on
colorscheme dante
filetype off
filetype plugin indent on
set nocompatible
set modelines=0
inoremap jj <ESC>
