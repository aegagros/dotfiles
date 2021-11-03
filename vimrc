call plug#begin('~/.vim/plugged')
" Completion / Syntax-checking
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
" Plug 'piec/vim-lsp-clangd'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
"Plug 'scrooloose/syntastic'
"Plug 'maralla/completor.vim'
" Navigation
"Plug 'ctrlpvim/ctrlp.vim'
Plug 'majutsushi/tagbar'
"Plug 'vim-scripts/a.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Editing facilitation
Plug 'alvan/vim-closetag'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-surround'
"Plug 'lyokha/vim-xkbswitch'
Plug 'godlygeek/tabular'
" User interface
Plug 'itchyny/lightline.vim'
" Plug 'vim-airline/vim-airline'
Plug 'gosukiwi/vim-atom-dark'
Plug 'Yggdroot/indentLine'
Plug 'fenetikm/falcon'
Plug 'NLKNguyen/papercolor-theme'
Plug 'arcticicestudio/nord-vim'
Plug 'altercation/vim-colors-solarized'
Plug 'dylanaraps/wal.vim'
" Distraction-free writing
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
" Functionality integration
Plug 'vimwiki/vimwiki'
Plug 'mattn/calendar-vim'
"Plug 'editorconfig/editorconfig-vim'
"Plug 'tpope/vim-fugitive'
" Syntax-specific
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'aklt/plantuml-syntax'
Plug 'liuchengxu/vim-clap'
call plug#end()

set nocompatible
" set clipboard=unnamedplus
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
nmap <leader>n :set rnu!<CR>

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
set laststatus=2
syntax on
set termguicolors
set t_Co=256
set t_ut=
" let g:gruvbox_contrast_dark='hard'
" let g:gruvbox_contrast_light='hard'

if has("gui_running")
    set guifont=Cascadia\ Code\ Medium\ 9.5
    set guioptions-=T
    set guioptions-=m
    set guioptions-=r
    set guioptions-=l
    set guioptions-=L
    " set lines=50 columns=250
    set visualbell
    set background=light
else
    set background=dark
endif
colorscheme PaperColor

let g:indentLine_color_term=8
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" additional features
set wildmenu
set ruler
set cursorline
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:·
" set list
" set colorcolumn=100

" disable swap and backup files (Always use version control! ALWAYS!)
set nobackup
set noswapfile

" Strip trailing spaces on save
" autocmd BufWritePre * :%s/\s\+$//e

" Enable powerline fonts in command line
" let g:airline_powerline_fonts=1

" Auto-close vim if last buffer is a NERDtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" vimwiki fold sections
let g:vimwiki_folding = 'expr'
let g:vimwiki_list = [
                \{'automatic_nested_syntaxes': 1}
            \]
let g:vimwiki_hl_cb_checked=2
" let g:vimwiki_hl_headers=1

let g:calendar_first_day="monday"
let g:calendar_date_endian="little"
let g:calendar_calendar="greece"

let g:indentLine_char="│"

" hide specific files in NERDTree
let NERDTreeIgnore = ['\.pyc$', '^__pycache__$']

" xml syntax folding by default
let g:xml_syntax_folding=1
au FileType xml setlocal foldmethod=syntax

let g:lsp_sings_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1

let g:indentLine_setConceal=0
set conceallevel=0
