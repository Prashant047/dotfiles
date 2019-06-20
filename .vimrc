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
Plugin 'aonemd/kuroi.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ryanoasis/vim-devicons'
Plugin 'severin-lemaignan/vim-minimap'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'vim-scripts/ReplaceWithRegister'
Plugin 'isRuslan/vim-es6'
Plugin 'mattn/emmet-vim'
Plugin 'Yggdroot/indentLine' 
Plugin 'jiangmiao/auto-pairs'
Plugin 'tomlion/vim-solidity'
Plugin 'othree/xml.vim'
Plugin 'alvan/vim-closetag'
Plugin 'Valloric/YouCompleteMe'
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
"set list lcs=tab:\|\ 
IndentLinesDisable
runtime macros/matchit.vim
execute pathogen#infect()

let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js,*.jsx'

let g:airline#extensions#tabline#enabled = 1
let g:indentLine_setColors = 0
let g:user_emmet_leader_key=','
let g:indentLine_setColors = 0
let g:indentLine_color_term = 239
