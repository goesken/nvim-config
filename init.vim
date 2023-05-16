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

set shada="NONE"
set viminfo="NONE"
set noswapfile

" PLUGINS ---------------------------------------------------------------- {{{

" Start NERDTree. If a file is specified, move the cursor to its window.
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

" Open the existing NERDTree on each new tab.
"autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif

lua <<EOF

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- My plugins here
  -- use 'foo1/bar1.nvim'
  -- use 'foo2/bar2.nvim'
  use 'mattn/emmet-vim'
  use 'junegunn/fzf.vim'
  use 'preservim/nerdtree'
  use 'tyru/open-browser.vim'
  use 'weirongxu/plantuml-previewer.vim'
  use 'aklt/plantuml-syntax'
  use 'ervandew/supertab'
  use 'dmerejkowsky/vim-ale'
  use 'wsdjeg/vim-assembly'
  use 'cdelledonne/vim-cmake'
  use 'tpope/vim-commentary'
  use 'tpope/vim-fugitive'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

EOF


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


