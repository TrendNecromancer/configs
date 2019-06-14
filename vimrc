" Allows writing to files with root priviledges

cmap w!! w !sudo tee % > /dev/null

" Makes sure py3 is loaded
if has('python3')
endif

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Helps with folding
Plugin 'tmhedberg/simpylfold'
" New look for vim
Plugin 'morhetz/gruvbox'
" Helps with indentation
Plugin 'vim-scripts/indentpython.vim'
" Autocompleter
Bundle 'Valloric/YouCompleteMe'
" Syntax-Checker
Plugin 'vim-syntastic/syntastic'
" PEP-8 Checker
Plugin 'nvie/vim-flake8'
" Self-explanatory
Plugin 'scrooloose/nerdtree'
" Polyglot language loader
Plugin 'sheerun/vim-polyglot'
" Airlight status bar
Plugin 'bling/vim-airline'
" goyo - no distractions
Plugin 'junegunn/goyo.vim'
" softpencil for writing
Plugin 'reedes/vim-pencil'
" Spellchecker
Plugin 'reedes/vim-lexical'
" Vim airline themes
Plugin 'vim-airline/vim-airline-themes'
" Easymotion
Plugin 'easymotion/vim-easymotion'
" Workspace, autosave, sessions
Plugin 'thaerkh/vim-workspace'
" Hardware Defined Language
Plugin 'suoto/vim-hdl'


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
" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za

" PEP 8 indentation
au BufNewFile, BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

" More indent stuff
au BufNewFile,BufRead *.js,*.html,*.css,*.vue
\ set tabstop=2 |
\ set softtabstop=2 |
\ set shiftwidth=2

" Flags unnecessary whitespace
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Set UTF-8
set encoding=utf-8

" Autoclose autocompleter preview window + shortcut for gotodefinition
let g:ycm_autoclose_preview_window_after_completion=1


" Pretty code
let python_highlight_all=1
syntax on

" Line numbering
set nu

" enable copy paste
set clipboard=unnamed

" Split mappings
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

let g:lexical#spelllang = ['en_us','en_gb','de']

