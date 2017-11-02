set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'iamcco/mathjax-support-for-mkdp'
Plugin 'iamcco/markdown-preview.vim'
Plugin 'cohlin/vim-colorschemes'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

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

set number                          " Line numbers
syntax enable                       " Syntax processing
set cursorline                      " Highlinght current line

set expandtab                       " Spaces instead of tabs
set tabstop=4                       " <TAB>=N<space>, read mode
set softtabstop=4                   " <TAB>=N<space>, edit mode
set backspace=indent,eol,start      " make backspace work in usual way

let g:airline_theme = "darcula"
colorscheme py-darcula

set lazyredraw                      " faster macros

set showmatch                       " [{()}]
set matchtime=0                     " remove delay after inserting a closing bracket

set incsearch                       " search as typed
set hlsearch                        " highlight matches

let mapleader=","
nnoremap <leader><space> :nohlsearch<CR>

" Folding settings
set foldenable                      " Folding (hide some nested code)
set foldlevelstart=10               " 10 folds then are ok
set foldnestmax=10                  " opens max 10 folds
set foldmethod=indent               " python like folds
" space to open/close folds
nnoremap <space> za

set wildmenu                        " Visual menu ':

" Mardown preview
let g:mkdp_path_to_chrome="/Applications/Google\\ Chrome.app/Contents/MacOS/Google\\ Chrome"
nmap <silent> <F8> <Plug>MarkdownPreview        " for normal mode
imap <silent> <F8> <Plug>MarkdownPreview        " for insert mode
nmap <silent> <F9> <Plug>StopMarkdownPreview    " for normal mode
imap <silent> <F9> <Plug>StopMarkdownPreview    " for insert mode

" Vim-Markdown
let g:vim_markdown_math = 1         " Used as $x^2$, $$x^2$$, escapable as \$x\$ and \$\$x\$\$
