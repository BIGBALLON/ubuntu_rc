" BASIC SETTING

set number
set noswapfile
set autoindent
set cindent
set mouse=a
set shiftwidth=4
set encoding=utf-8
set cursorline

" SCHEME COLOR
set tabstop=4
if !exists("g:syntax_on")
	syntax enable
endif

set rtp+=~/.vim/bundle/vim

set t_Co=256
colorscheme dracula

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	Plugin 'VundleVim/Vundle.vim'
	Plugin 'dracula/vim'
call vundle#end()
filetype plugin indent on 