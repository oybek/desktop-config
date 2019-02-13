"------------------------------ Bundle ----------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'tomasr/molokai'
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'derekwyatt/vim-scala'
Plugin 'bling/vim-airline'
Plugin 'morhetz/gruvbox'
Plugin 'mizuchi/stl-syntax'
Plugin 'wincent/command-t'

let g:airline#extensions#tabline#enabled = 1

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"------------------------------ My settings ------------------------------------
set hlsearch

map <F2> :%y+ <CR>

set listchars=tab:⎸\ ,trail:✖,extends:>,precedes:<
set list

set wrap!

set autoread
set number
set tabstop=4
set shiftwidth=4
set guifont=DejaVu\ Sans\ Mono\ 10

let g:rehash256=1

set background=dark
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox

set guioptions-=T
set guioptions-=m
set guioptions-=r

set cursorline
" set cursorcolumn

" Command-t open in new tab by default
let g:CommandTAcceptSelectionMap = '<C-t>'
let g:CommandTAcceptSelectionTabMap = '<CR>'

command! Screenshot :read ! bash /home/okhashimov/garage/imgur.sh/screenshot.sh
command! Publish :!git add . && git commit -m "udpate" && git push origin master

