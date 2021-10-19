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
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  call plug#end()

set background=dark
colorscheme gruvbox

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

set hidden
set number
set relativenumber
set inccommand=split
set autoread
"Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·
set ai
set tabstop=2
set showmatch
set cursorline
set cursorcolumn

nnoremap <C-o> :NERDTreeToggle<CR>

let NERDTreeShowHidden=1
let g:vimrubocop_keymap = 0
nnoremap <C-r> :RuboCop<CR>
let g:deoplete#enable_at_startup = 1

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

