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
colorscheme wombat256mod

" additional features
set wildmenu
set ruler
" set hlsearch
set incsearch
" set format options
set formatoptions=tcqr

" open a NERDTree automatically
autocmd vimenter * NERDTree
" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" map <F5> :Texplore<CR>
map <F5> :NERDTreeToggle<CR>
map <C-F5> :tabnew<CR>:NERDTreeToggle<CR>
map <F6> :w<CR>
map <F7> :tabp<CR>
map <F8> :tabn<CR>
map <F12> :q<CR>
