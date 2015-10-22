set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set hlsearch " hilighted search on (:nohlsearch turns off)
set number " line numbers
set t_Co=256
set ignorecase
set smartcase
set incsearch " Highlight as you type..
let g:LatexBox_Folding=1

" Higlight unwanted space
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/

" Dash keybinding
" leader is normally \ but lets change that to comma ,
" After this Dash search ,d in normal mode
:let mapleader = ","
:let maplocalleader = ","
:nmap <silent> <leader>d <Plug>DashSearch

" vundle things
set nocompatible               " be iMproved
filetype off                   " required!

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'gmarik/vundle'
" My Plugins here:
"
" original repos on github
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'flazz/vim-colorschemes'
Plugin 'rizzatti/funcoo.vim'
Plugin 'rizzatti/dash.vim'
Plugin 'vim-scripts/loremipsum'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'LaTeX-Box-Team/LaTeX-Box'
Plugin 'vim-scripts/Vimchant'
"" vim-scripts repos
"Plugin 'L9'
"Plugin 'FuzzyFinder'
"" non github repos
"Plugin 'git://git.wincent.com/command-t.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" For some reason these should be kept in the last part of the file
syntax on
colorscheme dante
filetype off
filetype plugin indent on
set nocompatible
set modelines=0
inoremap jj <ESC>
