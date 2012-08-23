set nocompatible    "VIM no vi
filetype off        "Required for vundle


syntax on


" Vundle stuff
"

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" Let Vundle manage Vundle (recuired)
Bundle 'gmarik/vundle'

" Other Bundles

Bundle 'mattn/zencoding-vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'tomtom/tcomment_vim'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-surround'
Bundle 'FuzzyFinder'
" TODO: Install snipMate
" TODO: Get ctags working...
"

" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'

" General
set tabstop=2		" a tab is two spaces
set softtabstop=2	" when hitting <bs> act like removing tabs
set shiftwidth=2	" number of spaces used for auto indents
set expandtab		"tabs to spaces
set smarttab		" insert tabs intelligently on new lines

set number		" always show line number
set showmatch		" show matching parens
set scrolloff=4		" keep x lines off bototm when scrolling
set mouse=a		" enable using mouse if configured

set history=1000
set undolevels=1000
set encoding=utf-8

set hidden		" enable editing for multiple files?
set showcmd		" show incomplete commands?

" Searching
set ignorecase		" ignore case when searching
set smartcase		" ignore case when searching and everything is lc
set hlsearch		" highlight search terms
set incsearch		" show search matches as you type

" remap colon to semi-colon
nmap ; :

" may want to add some stuff for handling folding:
" https://github.com/nvie/vimrc/blob/master/vimrc (ln 93)

" fix vim regex handling
" http://stevelosh.com/blog/2010/09/coming-home-to-vim/
nnoremap / /\v
vnoremap / /\v

nnoremap <C-t> :<C-u>FufFile **/<CR>



filetype plugin indent on     " required for vundle
set background=dark
colorscheme solarized

