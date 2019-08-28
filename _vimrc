call plug#begin()
Plug 'Raimondi/delimitMate'
Plug 'tomasr/molokai'
Plug 'itchyny/lightline.vim'
Plug 'easymotion/vim-easymotion'
Plug 'majutsushi/tagbar'
call plug#end()

source $VIMRUNTIME/vimrc_example.vim
behave xterm

set nocompatible
let mapleader=" "
set shortmess=atI

if has('autocmd')
	filetype plugin indent on
endif
if has('syntax') && !exists('g:syntax_on')
	syntax enable
endif

set number
set laststatus=2
set guifont=Menlo:h12:cANSI:qDRAFT
"set guioptions=
set mouse-=a
set mousehide
set nobackup
set noundofile

set ttimeout
set ttimeoutlen=50

set hidden
set showmatch
set matchtime=2
set wildmenu
set wildmode=list:longest,full
set lazyredraw
set showcmd
set splitright
set splitbelow

set ffs=unix,mac,dos
set backspace=indent,eol,start
set nrformats-=octal
set display+=lastline
set sessionoptions-=options
set clipboard+=unnamed

set autoindent
set cindent

set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab

set ignorecase
set smartcase
set hlsearch
set incsearch

set encoding=utf-8 
set fileencodings=ucs-bom,utf-8,gb18030,cp936,latin1
source $VIMRUNTIME/delmenu.vim 
source $VIMRUNTIME/menu.vim

colorscheme molokai
highlight clear SignColumn
highlight clear LineNr

nnoremap <C-V>	"+gP
cnoremap <C-V>	<C-R>+
vnoremap <C-c> "+y

vnoremap > >gv
vnoremap < <gv
nnoremap <C-l> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-l>

if &synmaxcol == 3000
	set synmaxcol=500
endif

let delimitMate_expand_cr = 1

let g:EasyMotion_do_mapping = 1
let g:EasyMotion_leader_key = '<leader>'

autocmd BufReadPost *
	\ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
	\ | exe "normal! g`\""
	\ | endif

autocmd GUIEnter * simalt ~x
autocmd filetype c,cpp TagbarToggle
