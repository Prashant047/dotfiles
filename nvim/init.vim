set termguicolors
set nocompatible              " be iMproved, required
set splitbelow
set splitright
set number relativenumber
set mouse=a
set ignorecase

" filetype off                  " required
" syntax enable

" filetype plugin indent on


" -----------------------------------------------------
" Specify a directory for plugins
call plug#begin('~/.config/nvim/plugged')

if exists('g:vscode')
    " VSCode extension
else
    " ordinary neovim
    
	Plug 'tpope/vim-commentary'
	Plug 'tpope/vim-unimpaired'
	Plug 'jiangmiao/auto-pairs'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'ThePrimeagen/vim-be-good'
    Plug 'vim-airline/vim-airline'
    Plug 'kassio/neoterm'
    Plug 'kkoomen/vim-doge'
    Plug 'mattn/emmet-vim'
    Plug 'octol/vim-cpp-enhanced-highlight'

    " themes
    Plug 'morhetz/gruvbox'

endif

Plug 'tpope/vim-surround'
" Plug 'tpope/vim-fugitive'
Plug 'wellle/targets.vim'

" Initialize plugin system
call plug#end()

if exists('g:vscode')
	" VSCode extension
	xmap gc  <Plug>VSCodeCommentary
	nmap gc  <Plug>VSCodeCommentary
	omap gc  <Plug>VSCodeCommentary
	nmap gcc <Plug>VSCodeCommentaryLine
else
	" ordinary neovim
	set tabstop=4
	set shiftwidth=4
	set expandtab
	nnoremap <C-h> <C-w>h
	nnoremap <C-j> <C-w>j
	nnoremap <C-k> <C-w>k
	nnoremap <C-l> <C-w>l

	" mappings to switch between panes
	" FZF key bindings
	nnoremap <C-p> :Files<cr>
	nnoremap <leader>sl :Lines<cr>
	nnoremap <leader>sb :Buffers<cr>
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

    nnoremap <silent> <leader>uu /asdfasdfasodfawoeifjaklsdjfowe<cr>
    
    " neoterm key bindings
    nnoremap <leader><space> :vertical :botright Ttoggle<cr><c-w>li

    tnoremap <C-h> <C-\><C-N><C-w>h
    tnoremap <C-j> <C-\><C-N><C-w>j
    tnoremap <C-k> <C-\><C-N><C-w>k
    tnoremap <C-l> <C-\><C-N><C-w>l
    tnoremap <Esc> <C-\><C-N>


endif

set background=dark
colorscheme gruvbox
