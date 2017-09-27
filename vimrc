call plug#begin('~/.vim/plugged')
Plug 'scrooloose/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'flazz/vim-colorschemes'
Plug 'gosukiwi/vim-atom-dark'
Plug 'vimwiki/vimwiki'
Plug 'kylef/apiblueprint.vim'
Plug 'alvan/vim-closetag'
Plug 'vimoutliner/vimoutliner'
Plug 'tomtom/tcomment_vim'
Plug 'majutsushi/tagbar'
Plug 'lyokha/vim-xkbswitch'
Plug 'tpope/vim-fugitive'
Plug 'terryma/vim-multiple-cursors'
Plug 'vim-scripts/a.vim'
Plug 'itchyny/calendar.vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'nelstrom/vim-markdown-folding'
" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'lilydjwg/colorizer'
Plug 'Yggdroot/indentLine'
Plug 'godlygeek/tabular'
Plug 'editorconfig/editorconfig-vim'
Plug 'vim-scripts/ebnf.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'maralla/completor.vim'
call plug#end()

set nocompatible
set clipboard=unnamedplus
set encoding=utf-8

" various helpful mappings
nmap \l :setlocal number!<CR>
nmap \s :set paste!<CR>
nmap \w :setlocal wrap!<CR>:setlocal wrap?<CR>
nmap <Up> gk
nmap <Down> gj
nmap <F2> :NERDTreeToggle<CR>
nmap <C-n> :bnext<CR>
map <leader>p :CtrlPBuffer<CR>
map <leader>P :CtrlPMRU<CR>
map <leader>t :TW<CR>
map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
map <leader>c :TComment<CR>

" searching
set incsearch
set ignorecase
set smartcase
set hlsearch
nmap <leader>q :nohlsearch<CR>

" identation
let g:load_doxygen_syntax=1
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set textwidth=100
set nowrap

" enable filetype plugin
filetype plugin on

" syntax-coloring, line numbers, etc.
set nu
set background=dark
set laststatus=2
syntax on
set termguicolors
set t_Co=256
set t_ut=
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_contrast_light='hard'
color gruvbox
if has("gui_running")
    set guifont=Hack\ 10.5
    set guioptions-=T
    set guioptions-=m
    set guioptions-=r
    set guioptions-=l
    set guioptions-=L
    set visualbell
else
    hi Normal guibg=NONE ctermbg=NONE
endif

" additional features
set wildmenu
set ruler

" disable swap and backup files (Always use version control! ALWAYS!)
set nobackup
set noswapfile

" Strip trailing spaces on save
autocmd BufWritePre * :%s/\s\+$//e

" Instruct Ctrl-P to ignore files according to git ignore patterns
let g:ctrlp_user_command = [
    \ '.git', 'cd %s && git ls-files . -co --exclude-standard',
    \ 'find %s -type f'
    \ ]

" Enable powerline fonts in command line
let g:airline_powerline_fonts=1

" Instruct syntastic to use C++11 stuff
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -I./src'

" Auto-close vim if last buffer is a NERDtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" vimwiki fold sections
let g:vimwiki_folding = 'expr'

" enable automatic layout switching
let g:XkbSwitchEnabled = 1

let g:calendar_google_calendar = 1
let g:calendar_first_day="monday"
let g:calendar_date_endian="little"
let g:calendar_calendar="greece"

let g:indentLine_char="│"
let g:indentLine_color_gui="#2b2b29"

let g:completor_clang_binary = '/usr/bin/clang'
let g:completor_python_binary = '/usr/lib/python3.6/site-packages/jedi'

" hide specific files in NERDTree
let NERDTreeIgnore = ['\.pyc$', '^__pycache__$']

