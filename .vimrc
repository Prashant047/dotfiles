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
Plugin 'kien/ctrlp.vim'
" Plugin 'aonemd/kuroi.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ryanoasis/vim-devicons'
" Plugin 'severin-lemaignan/vim-minimap'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'vim-scripts/ReplaceWithRegister'
" Plugin 'isRuslan/vim-es6'
Plugin 'mattn/emmet-vim'
Plugin 'pangloss/vim-javascript'
" Plugin 'Yggdroot/indentLine' 
Plugin 'jiangmiao/auto-pairs'
Plugin 'tomlion/vim-solidity'
Plugin 'othree/xml.vim'
Plugin 'alvan/vim-closetag'
Plugin 'Valloric/YouCompleteMe'
Plugin 'godlygeek/tabular'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'tommcdo/vim-exchange'
Plugin 'kkoomen/vim-doge'
Plugin 'easymotion/vim-easymotion'
Plugin 'joshdick/onedark.vim'
" Plugin 'mhinz/vim-startify'
 
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
"set list lcs=tab:\|\ 
runtime macros/matchit.vim
execute pathogen#infect()

autocmd FileType c,cpp,cs,java          setlocal commentstring=//\ %s

let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js,*.jsx'

" Airline Customizations
" let g:airline_left_sep = '\uE0B8'
" let g:airline_right_sep = '\uE0BA'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

let g:user_emmet_leader_key=','

let g:ycm_show_diagnostics_ui = 0

let g:indentLine_color_term = 239
let g:indentLine_color_term = 239

"CUSTOM VIM STUFF HERE ==========================||
imap <c-d>r  <esc>"zyiwA = require("<c-r>z<esc>A;<esc>bbi
inoremap jk <esc>
" comment a function block
nmap <Leader>fb $gc% 

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


" =================================================||
