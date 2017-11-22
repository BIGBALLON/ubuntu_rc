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

" ucompleteme fix
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

map <F3> :NERDTreeToggle<CR>
map <F5> :w<Enter>
imap <F5> <ESC>:w<Enter>

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	Plugin 'VundleVim/Vundle.vim'
	Plugin 'scrooloose/nerdtree'
	Plugin 'dracula/vim'
	Plugin 'Valloric/YouCompleteMe'
call vundle#end()
filetype plugin indent on 
