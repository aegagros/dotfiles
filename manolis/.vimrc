" identation
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" enable filetype plugin
filetype plugin on

" syntax-coloring, line numbers, etc.
set t_Co=256
set nu
syntax on
set background=dark
colorscheme Monokai

" additional features
set wildmenu
set ruler
" set hlsearch
set incsearch
" set format options
set formatoptions=tcqr
" set swap file directory to ~/.tmp
set directory=~/.tmp
" set graphical font
set gfn=Ubuntu\ Mono\ 14

:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar

" open a NERDTree automatically if no arguments are specified
" autocmd vimenter * if !argc() | NERDTree | endif
" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" display TagList window on the right
let Tlist_Use_Right_Window=1
" highlight doxygen tags
" let g:load_doxygen_syntax=1
" hide python compiled files
let g:netrw_list_hide='.*\.pyc$'

" map <F5> :Texplore<CR>
map <F3> :TlistToggle<CR>
map <F5> :NERDTreeToggle<CR>
map <C-F5> :Texplore<CR>
map <F6> :w<CR>
map <F7> :tabp<CR>
map <F8> :tabn<CR>
map <F12> :q<CR>
