set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'iamcco/mathjax-support-for-mkdp'
Plugin 'iamcco/markdown-preview.vim'
Plugin 'cohlin/vim-colorschemes'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'lyokha/vim-xkbswitch'

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
set clipboard=unnamed               " Clipboard sharing

set expandtab                       " Spaces instead of tabs
set smarttab                        " Tab in the beginning of the line acts like shift
set tabstop=4                       " <TAB>=N<space>, read mode
set shiftwidth=4                    " The size of an indent
set softtabstop=4                   " <TAB>=N<space>, edit mode
set backspace=indent,eol,start      " make backspace work in usual way

let g:airline_theme = "darcula"
colorscheme py-darcula

set lazyredraw                      " faster macros

set showmatch                       " [{()}]
set matchtime=0                     " remove delay after inserting a closing bracket

set incsearch                       " search as typed
set hlsearch                        " highlight matches

" This will jump to the last known cursor position unless
"   - the position is invalid
"   - the position is inside an event handler
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

let mapleader=","                   " <leader> key
" Remove highliting with shortcut
nnoremap <leader><space> :nohlsearch<CR>

" Folding settings
set foldenable                      " Folding (hide some nested code)
set foldlevelstart=10               " 10 folds then are ok
set foldnestmax=10                  " opens max 10 folds
set foldmethod=indent               " python like folds
" space to open/close folds
nnoremap <space> za

set wildmenu                        " Visual menu ':
set mouse=a                         " mouse pointing
" Mardown preview
let g:mkdp_path_to_chrome="/Applications/Google\\ Chrome.app/Contents/MacOS/Google\\ Chrome"
" for normal mode
nmap <silent> <F8> <Plug>MarkdownPreview
" for insert mode
imap <silent> <F8> <Plug>MarkdownPreview
" for normal mode
nmap <silent> <F9> <Plug>StopMarkdownPreview
" for insert mode
imap <silent> <F9> <Plug>StopMarkdownPreview

" Vim-Markdown
let g:vim_markdown_math = 1         " Used as $x^2$, $$x^2$$, escapable as \$x\$ and \$\$x\$\$

" Keyboard Switcher
let g:XkbSwitchEnabled = 1          " enable lyokha/vim-xkbswitch
" This is platform specific and for macos needs
" https://github.com/vovkasm/input-source-switcher installed
let g:XkbSwitchLib = '/usr/local/lib/libInputSourceSwitcher.dylib'

" Custom remaps
" <leader>(l)<CR> inserts line above(below)
nnoremap <silent><leader>l<CR> :set paste<CR>m`o<Esc>``:set nopaste<CR><C-y>
nnoremap <silent><leader><CR> :set paste<CR>m`O<Esc>``:set nopaste<CR><C-e>

fun! TrimWhitespace()               " Removes all trailing spaces
    " Save position
    normal m`
    " Ramove all trailing spaces
    %s/\s\+$//e
    " Return to saved position 
    normal ``
endfun
" :TrimWhitespace
command! TrimWhitespace call TrimWhitespace()

