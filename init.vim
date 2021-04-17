call plug#begin('~/.config/nvim/autoload/plugged')
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'scrooloose/nerdtree'
  Plug 'morhetz/gruvbox'
  Plug 'tpope/vim-endwise'
  Plug 'tpope/vim-rails'
  Plug 'ngmy/vim-rubocop'
  Plug 'ryanoasis/vim-devicons'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'jiangmiao/auto-pairs'
  Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown'}
  Plug 'prettier/vim-prettier'
  Plug 'ngmy/vim-rubocop'
  Plug 'kien/ctrlp.vim'
call plug#end()

set background=dark
colorscheme gruvbox

set hidden
set number
set relativenumber
set inccommand=split
set autoread
"Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

nnoremap <C-o> :NERDTreeToggle<CR>

let g:vimrubocop_keymap = 0
nnoremap <C-r> :RuboCop<CR>

"Spaces & Tabs {{{
set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set shiftwidth=2    " number of spaces to use for autoindent
set expandtab       " tabs are space
set autoindent
set copyindent      " copy indent from the previous line
" }}} Spaces & Tabs
