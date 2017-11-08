call plug#begin('~/.vim/plugged')
" Completion / Syntax-checking
Plug 'scrooloose/syntastic'
Plug 'maralla/completor.vim'
" Navigation
Plug 'ctrlpvim/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'vim-scripts/a.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Editing facilitation
Plug 'alvan/vim-closetag'
Plug 'tomtom/tcomment_vim'
Plug 'lyokha/vim-xkbswitch'
Plug 'godlygeek/tabular'
" User interface
Plug 'itchyny/lightline.vim'
Plug 'flazz/vim-colorschemes'
Plug 'gosukiwi/vim-atom-dark'
Plug 'Yggdroot/indentLine'
Plug 'lilydjwg/colorizer'
" Distraction-free writing
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
" Functionality integration
Plug 'vimwiki/vimwiki'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-fugitive'
Plug 'itchyny/calendar.vim'
" Syntax-specific
Plug 'kylef/apiblueprint.vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'nelstrom/vim-markdown-folding'
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
let g:vimwiki_list = [
                \{'automatic_nested_syntaxes': 1},
            \]

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

