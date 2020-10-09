syntax on

set noerrorbells
set termguicolors
set tabstop=2
set shiftwidth=2
set expandtab
set nocompatible              " be iMproved, required
set splitbelow
set splitright
set number relativenumber
set mouse=a
set noswapfile
set smartcase
set shortmess+=A

filetype on
filetype plugin on
filetype indent on
" filetype off                  " required
" syntax enable

" filetype plugin indent on


" -----------------------------------------------------
" Specify a directory for plugins
call plug#begin('~/.config/nvim/plugged')

" ordinary neovim

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired'
Plug 'jparise/vim-graphql'
Plug 'voldikss/vim-floaterm'
Plug 'tpope/vim-eunuch'
Plug 'christoomey/vim-tmux-navigator'
Plug 'othree/xml.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ThePrimeagen/vim-be-good'
Plug 'vim-airline/vim-airline'
" Plug 'kassio/neoterm'
Plug 'kkoomen/vim-doge'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'mattn/emmet-vim'
Plug 'octol/vim-cpp-enhanced-highlight'

" themes
Plug 'morhetz/gruvbox'


Plug 'tpope/vim-surround'
" Plug 'tpope/vim-fugitive'
Plug 'wellle/targets.vim'

" Initialize plugin system
call plug#end()

" mappings to switch between panes
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }

" resize key bindings
nnoremap <Up> :resize +2<cr>
nnoremap <Down> :resize -2<cr>
nnoremap <Left> :vertical resize -2<cr>
nnoremap <Right> :vertical resize +2<cr>

nnoremap <SPACE> <Nop>
let mapleader=" "
inoremap jk <esc>

nnoremap <leader>vv :vnew<cr>
nnoremap <leader>hh :new<cr>
nnoremap <leader>dd :bd<cr>
nnoremap <leader>cc :q<cr>
nnoremap <leader>nn :enew<cr>

nnoremap <leader>rt :edit ~/.config/nvim/init.vim<cr>
nnoremap <leader>ss :source ~/.config/nvim/init.vim<cr>
nnoremap <leader>w :w<cr>

set updatetime=300
" use <tab> for trigger completion and navigate to the next complete item
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>e :CocCommand explorer<CR>

let g:user_emmet_leader_key=','
nnoremap <silent> <leader>uu /asdfasdfasodfawoeifjaklsdjfowe<cr>

"FloatTerm key bindings
nnoremap <silent> <leader>tt :FloatermToggle<CR>
tnoremap <silent> <leader>tt <C-\><C-n>:FloatermToggle<CR>

" neoterm key bindings
" nnoremap <leader><space> :vertical :botright Ttoggle<cr><c-w>li

tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l
tnoremap <Esc> <C-\><C-N>


" FZF key bindings
nnoremap <C-p> :Files<cr>
nnoremap <leader>ls :Lines<cr>
nnoremap <leader>bs :Buffers<cr>
nnoremap <leader>ps :Ag<cr>

set background=dark
colorscheme gruvbox
