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
  Plug 'tpope/vim-surround'
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
  Plug 'dart-lang/dart-vim-plugin'
  Plug 'natebosch/vim-lsc'
  Plug 'natebosch/vim-lsc-dart'
  Plug 'fatih/vim-go'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'thaerkh/vim-indentguides'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

nnoremap <F5> :buffers<CR>:buffer<Space>

nnoremap <silent> <s-Down> :m +1<CR>
nnoremap <silent> <s-Up> :m -2<CR>

set encoding=UTF-8

set background=dark
colorscheme gruvbox
set guifont=DroidSansMono\ Nerd\ Font\ 11

" Configurações do Vim IndentGuides
let g:indentguides_spacechar = '▏'
let g:indentguides_tabchar = '▏'
" Fim das configurações do Vim IndentGuides

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

"CoC definitions
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

let g:lsc_auto_map = v:true

"Get rid of that annoying bell
set visualbell

map <leader>o :NERDTreeToggle<CR>

let NERDTreeShowHidden=1
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <C-s> :NERDTree-s<CR>

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

" Panel resizing
nnoremap <silent> <Leader>[ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>] :exe "resize " . (winheight(0) * 2/3)<CR>

nnoremap <silent> <Leader>( :exe "resize +20" <CR>
nnoremap <silent> <Leader>) :exe "resize -20" <CR>
