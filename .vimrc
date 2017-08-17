"------------------------------ Bundle ----------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'derekwyatt/vim-scala'
Plugin 'bling/vim-airline'
Plugin 'morhetz/gruvbox'
Plugin 'mizuchi/stl-syntax'
Plugin 'myusuf3/numbers.vim'
Plugin 'matze/vim-move'

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
map <F2> :%y+ <CR>
map <F4> :silent exec "!gnome-terminal --maximize -x bash -c './run.sh %'" <CR>
map <F3> "+p

set wrap!

set autoread
set number
set tabstop=4
set shiftwidth=4
set guifont=Ubuntu\ Mono\ 12
set list lcs=tab:\|\ 

let g:rehash256=1

set background=dark
colorscheme gruvbox

set cursorline
set guioptions-=T

let g:move_key_modifier = 'C'


"with your cursor on a line or a block selected, type `:HL`
"to remove, on each line call :sign unplace
highlight HL ctermbg=darkgray
sign define hl linehl=HL
let s:highlightLineSignId = 74000
function! g:HighlightLine()
	execute 'sign place' s:highlightLineSignId 'line='.line(".") 'name=hl' 'file='.expand("%")
	let s:highlightLineSignId += 1
endfunction
command! HL call g:HighlightLine()

autocmd BufNewFile,BufRead *.bla   set syntax=c                                                                                                                                                           
