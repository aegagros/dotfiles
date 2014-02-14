" Pathogen
filetype off " Pathogen needs to run before plugin indent on
call pathogen#infect() " generate helptags for everything in 'runtimepath'

set nocompatible
set updatetime=1000

" identation
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set nowrap
set textwidth=100

" enable filetype plugin
filetype plugin on

" syntax-coloring, line numbers, etc.
set t_Co=256
set nu
syntax on
set background=dark
let g:solarized_termcolors=256
let g:solarized_contrast="high"
set hlsearch
set laststatus=2
colorscheme solarized

" additional features
set wildmenu
set ruler
" set hlsearch
set incsearch

" disable swap and backup files (Always use version control! ALWAYS!)
set nobackup
set noswapfile

" setup various gvim modifications
set gfn=Consolas\ 10
" :set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=R "remove right-hand scroll bar
set guioptions-=l  "remove right-hand scroll bar
set guioptions-=L  "remove right-hand scroll bar

" display explore list as a tree by default
" let Tlist_Use_Right_Window=1
let g:netrw_liststyle=3

map <F2> :NERDTreeToggle<CR>
map <F3> :TagbarToggle<CR>
map <C-F5> :tabnew<CR>
map <F5> :NERDTreeMirror<CR>
map <F6> :w<CR>
map <F7> :tabp<CR>
map <F8> :tabn<CR>
set pastetoggle=<F10>
map <F12> :q<CR>
map <leader>p :CtrlPBuffer<CR>
map <leader>P :CtrlPMRU<CR>
" Alt + arrow window navigation
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" these will work only in gvim
map <C-Tab> :bnext<CR>
map <C-S-Tab> :bprev<CR>

" vimwiki ctags config
let g:tagbar_type_vimwiki = {
\ 'ctagstype' : 'vimwiki',
\ 'kinds'     : [
\ 'h:headers',
\ ],
\ 'sort'    : 0
\ }

" Open a NERDTree on startup
" autocmd VimEnter * if !argc() | NERDTree | endif
" Quit if last and only buffer is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Set vim-calendar keys
let g:calendar_keys = { 'goto_next_month':'<C-Right>', 'goto_prev_month':'<C-Left>', 'goto_prev_year':'<C-Up>', 'goto_next_year':'<C-Down>' }
