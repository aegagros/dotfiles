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
colorscheme Monokai

" additional features
set wildmenu
set ruler
" set hlsearch
set incsearch
" set format options
set formatoptions-=c

" disable swap and backup files (Always use version control! ALWAYS!)
set nobackup
set noswapfile

" set graphical font
set gfn=DejaVu\ Sans\ Mono\ 11

:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar

" display explore list as a tree by default
" let Tlist_Use_Right_Window=1
let g:netrw_liststyle=3

map <F3> :TagbarToggle<CR>
map <C-F5> :Texplore<CR>
map <F5> :NERDTreeToggle<CR>
map <F6> :w<CR>
map <F7> :tabp<CR>
map <F8> :tabn<CR>
set pastetoggle=<F10>
map <F12> :q<CR>

" Customize status bar
set laststatus=2
set statusline=
set statusline+=%<\                        " cut at start
set statusline+=%2*[%n%H%M%R%W]%*\         " flags and buf no
set statusline+=%{fugitive#statusline()}\  " current branch (Fugitive plugin)
set statusline+=%-40f\                     " path
set statusline+=%=%1*%y%*%*\               " file type
set statusline+=%10((%l,%c)%)\             " line and column
set statusline+=%P                         " percentage of file

" vimwiki ctags config
let g:tagbar_type_vimwiki = {
\ 'ctagstype' : 'vimwiki',
\ 'kinds'     : [
\ 'h:headers',
\ ],
\ 'sort'    : 0
\ }
