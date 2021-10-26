"Set leader key
let mapleader=","
set timeout timeoutlen=1500

"Swap & backup files
set noswapfile
set nobackup
set nowb

call plug#begin('~/.config/nvim/autoload/plugged')
  Plug 'altercation/vim-colors-solarized'
  Plug 'scrooloose/nerdtree'
  Plug 'morhetz/gruvbox'
  Plug 'tpope/vim-endwise'
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-commentary'
  Plug 'ngmy/vim-rubocop'
  Plug 'ryanoasis/vim-devicons'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'jiangmiao/auto-pairs'
  Plug 'prettier/vim-prettier'
  Plug 'kien/ctrlp.vim'
  Plug 'rking/ag.vim'
  Plug 'gmarik/Vundle.vim'
  Plug 'slim-template/vim-slim'
  Plug 'habamax/vim-asciidoctor'
  Plug 'scrooloose/syntastic'
  Plug 'vim-ruby/vim-ruby'
  Plug 'elixir-editors/vim-elixir'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'elixir-lsp/coc-elixir', {'do': 'yarn install && yarn prepack'}
call plug#end()

set background=dark
colorscheme gruvbox

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

"Command history
set history=200

"Prevent opening new buffer without saving current file
set hidden

"show line numbers & relative line numbers, to current line
set number relativenumber

"
set inccommand=split

"Reload files changed outside nvim
set autoread

"Emulates delete key between lines
set backspace=indent,eol,start

"Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

"set auto indent
set ai

"tab size
set tabstop=2

set showmatch

"Large (screen size) line and column cursors
set cursorline
set cursorcolumn

"Get rid of that annoying bell
set visualbell

map <leader>o :NERDTreeToggle<CR>

let NERDTreeShowHidden=1

"Rubocop shortcut
let g:vimrubocop_keymap = 0
map <leader>r :RuboCop<CR>

"Spaces & Tabs {{{
set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set shiftwidth=2    " number of spaces to use for autoindent
set expandtab       " tabs are space
set autoindent
set copyindent      " copy indent from the previous line
" }}} Spaces & Tabs

" " GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

