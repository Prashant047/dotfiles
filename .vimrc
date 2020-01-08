set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" Plugin 'kien/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ryanoasis/vim-devicons'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'vim-scripts/ReplaceWithRegister'
Plugin 'mattn/emmet-vim'
Plugin 'pangloss/vim-javascript'
" Plugin 'Yggdroot/indentLine' 
Plugin 'jiangmiao/auto-pairs'
Plugin 'tomlion/vim-solidity'
Plugin 'othree/xml.vim'
Plugin 'alvan/vim-closetag'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'godlygeek/tabular'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'tommcdo/vim-exchange'
Plugin 'kkoomen/vim-doge'
Plugin 'easymotion/vim-easymotion'
Plugin 'joshdick/onedark.vim'
Plugin 'danilo-augusto/vim-afterglow'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'majutsushi/tagbar'
Plugin 'MaxMEllon/vim-jsx-pretty'
Plugin 'wellle/targets.vim'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
" Plugin 'dense-analysis/ale'
" Plugin 'airblade/vim-gitgutter'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

if $TMUX == ''
	set clipboard+=unnamed
endif

set number relativenumber
augroup filetype javascript syntax=javascript
set noshowmatch
syntax enable
set autoindent
set tabstop=4
set shiftwidth=4
set showmatch
set numberwidth=2
set backspace=indent,eol,start
set fillchars+=vert:\ 
:set hlsearch incsearch
hi VertSplit ctermbg=NONE guibg=NONE
" set list lcs=tab:\|\ 
runtime macros/matchit.vim

execute pathogen#infect()

autocmd FileType c,cpp,cs,java          setlocal commentstring=//\ %s

let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js,*.jsx'

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" Airline Customizations
" let g:airline_left_sep = '\uE0B8'
" let g:airline_right_sep = '\uE0BA'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

let g:user_emmet_leader_key=','

let g:ycm_show_diagnostics_ui = 0
let g:ycm_autoclose_preview_window_after_completion = 1

" let g:indentLine_color_term = 239
" let g:indentLine_color_term = 239

"CUSTOM VIM STUFF HERE ==========================||
imap <c-d>r  <esc>"zyiwA = require("<c-r>z<esc>A;<esc>bbi
inoremap jk <esc>

" comment a function block
nmap <Leader>fb gca{ 

" edit vimrc
nmap <Leader>erc :edit ~/Documents/dotfiles/.vimrc<CR>
" load vimrc
nmap <Leader>lrc :source ~/Documents/dotfiles/.vimrc<CR>

" open tagbar
nmap <Leader>tb :TagbarToggle<CR>
let g:tagbar_ctags_bin = '/usr/local/Cellar/ctags/5.8_1/bin/ctags'

" toggle NERDTree
nmap <leader>tt :NERDTreeToggle<CR>

" FZF mappings
nnoremap <C-p> :Files<CR>
nnoremap <Leader>sl :Line<CR>
nnoremap <Leader>bl :Buffers<CR>

" buffer navigation mappings
nmap <Leader>w :bn<CR>
nmap <Leader>s :bp<CR>
nmap <Leader>bd :bd<CR>

" pane switching mappings
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

function! BoxComment()
	let l:current_line = getline('.')
	let l:padding_length = 10
	let l:hash_str = repeat("-", strlen(current_line) + padding_length*2)
	let l:c_line = "+" . hash_str . "+"

	let l:final_line = "|" . repeat(" ",padding_length) . current_line . repeat(" ", padding_length) . "|"

	execute "normal! cc"
	execute "call setline('.', c_line)"
	execute "normal gcl"
	execute "normal! o"
	execute "call setline('.', final_line)"
	execute "normal gcl"
	execute "normal! o"
	execute "call setline('.', c_line)"
	execute "normal gcl"

endfunction

nnoremap <Leader>cb :call BoxComment()<CR>


colorscheme deus
" =================================================||
