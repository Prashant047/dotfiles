set termguicolors
set nocompatible              " be iMproved, required
set splitbelow
set splitright
set number relativenumber
set mouse=a

filetype off                  " required
syntax enable

filetype plugin indent on

set tabstop=4
set shiftwidth=4
set expandtab

" -----------------------------------------------------
" Specify a directory for plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'

Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'junegunn/fzf.vim'
" Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'yuezk/vim-js'
" Plug 'dense-analysis/ale'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'kassio/neoterm'
Plug 'airblade/vim-gitgutter'
Plug 'mattn/emmet-vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" themes
Plug 'cocopon/iceberg.vim'
Plug 'KeitaNakamura/neodark.vim'
Plug 'morhetz/gruvbox'
Plug 'tyrannicaltoucan/vim-deep-space'

" Initialize plugin system
call plug#end()

" -----------------------------------------------------
nnoremap <SPACE> <Nop>
let mapleader=" "
inoremap jk <esc>

tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l
tnoremap <Esc> <C-\><C-N>

" mappings to switch between panes
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" FZF key bindings
nnoremap <C-p> :Files<cr>
nnoremap <leader>sl :Lines<cr>
nnoremap <leader>sb :Buffers<cr>

" resize key bindings
nnoremap <Up> :resize +2<cr>
nnoremap <Down> :resize -2<cr>
nnoremap <Left> :vertical resize -2<cr>
nnoremap <Right> :vertical resize +2<cr>

nnoremap <leader>w :w<cr>

" neoterm key bindings
nnoremap <leader><space> :vertical :botright Ttoggle<cr><c-w>li

nnoremap <leader>vv :vnew<cr>
nnoremap <leader>hh :new<cr>
nnoremap <leader>dd :bd<cr>
nnoremap <leader>cc :q<cr>

nnoremap <leader>rt :edit ~/.config/nvim/init.vim<cr>
nnoremap <leader>ss :source ~/.config/nvim/init.vim<cr>

let g:airline#extensions#tabline#enabled = 1
let g:user_emmet_leader_key=','
let g:javascript_plugin_jsdoc = 1


" set color scheme
let g:gruvbox_contrast_dark = 'medium'
let g:gitgutter_override_sign_column_highlight=1
let g:airline_theme='angr'


set background=dark
colorscheme gruvbox
