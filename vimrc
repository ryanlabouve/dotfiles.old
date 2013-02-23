set nocompatible    "VIM no vi
filetype off        "Required for vundle

syntax on

let mapleader = ","

" Vundle stuff
"

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" Let Vundle manage Vundle (recuired)
Bundle 'gmarik/vundle'

" Other Bundles

Bundle 'mattn/zencoding-vim'
Bundle 'flazz/vim-colorschemes'
Bundle 'tomtom/tcomment_vim'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-surround'
Bundle 'FuzzyFinder'
Bundle 'scrooloose/nerdtree'
Bundle 'hallison/vim-markdown'

"Dependencies for Snipmate
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "honza/snipmate-snippets"

"Snipmate
Bundle 'garbas/vim-snipmate'

" Tabular
Bundle 'godlygeek/tabular'

nmap <Leader>a= :Tab /=<CR>
vmap <Leader>a= :Tab /=<CR>
nmap <Leader>a# :Tab /\v#<CR>
vmap <Leader>a# :Tab /\v#<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>


" References: http://vimcasts.org/episodes/aligning-text-with-tabular-vim/

" TODO: Get ctags working...
"Ctags
Bundle "vim-scripts/taglist.vim"
set tags=tags;/


" Syntax highlighting for markdown
au BufNewFile,BufRead *.md set filetype=markdown
" http://learnvimscriptthehardway.stevelosh.com/chapters/44.html



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

" http://vim.1045645.n5.nabble.com/Help-with-map-for-FuzzyFinder-td1193515.html
nnoremap <C-t> :<C-u>FufFile **/<CR>

"Nerdtree shortcut
nmap <leader>s :NERDTreeToggle<cr>

" Make changing windows better
map <C-H> <C-W>h
map <C-L> <C-W>l

filetype plugin indent on     " required for vundle
set background=dark
colorscheme desert256

" http://items.sjbach.com/319/configuring-vim-right
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp


