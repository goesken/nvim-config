set mouse=

set nocompatible

filetype on
filetype plugin on
filetype indent on

syntax on

set nowrap

set tabstop=8
set softtabstop=0
set expandtab
set shiftwidth=4
set smarttab

set number

set autoindent

set foldmethod=syntax

set hlsearch
set incsearch

set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" PLUGINS ---------------------------------------------------------------- {{{

" Start NERDTree. If a file is specified, move the cursor to its window.
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

" Open the existing NERDTree on each new tab.
"autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif



" }}}

" MAPPINGS --------------------------------------------------------------- {{{

map <F2> :qa!<CR>
map <F3> :q<CR>
map <F4> :tab ball<CR>
map <F5> :bp<CR>
map <F6> :bn<CR>
map <F7> :tabp<CR>
map <F8> :tabn<CR>


" }}}

" VIMSCRIPT -------------------------------------------------------------- {{{

augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END


" }}}

" STATUS LINE ------------------------------------------------------------ {{{

set statusline=
set statusline+=\ %F\ %M\ %Y\ %R
set statusline+=%=
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%

set laststatus=2


" }}}


