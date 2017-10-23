" BASIC SETTING

set number
set noswapfile
set autoindent
set cindent
set mouse=a
set shiftwidth=4
set encoding=utf-8
" SCHEME COLOR

set tabstop=4
if !exists("g:syntax_on")
	syntax enable
endif
set rtp+=~/.vim/bundle/vim
set t_Co=256
colorscheme dracula

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

map <F3> :NERDTreeToggle<CR>
map <F5> :w<Enter>
imap <F5> <ESC>:w<Enter>
imap () ()<Left>
imap [] []<Left>
imap {} {}<Left>
imap <> <><Left>
imap '' ''<Left>
imap "" ""<Left>
imap <C-h> <Left>
imap <C-l> <Right>
imap <C-k> <Up>
imap <C-j> <Down>
imap <C-b> <Backspace>
imap <C-d> <Delete>

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	Plugin 'VundleVim/Vundle.vim'
	Plugin 'scrooloose/nerdtree'
	Plugin 'dracula/vim'
	Plugin 'Valloric/YouCompleteMe'
call vundle#end()
filetype plugin indent on 
