" BASIC SETTING
set number
set noswapfile
set autoindent
set cindent
set mouse=a
set encoding=utf-8

set cursorcolumn
set cursorline

set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.
set shiftwidth=4    " Indents will have a width of 4
set softtabstop=4   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces


set background=dark
hi Cursor ctermfg=17 ctermbg=231 cterm=NONE guifg=#282a36 guibg=#f8f8f0 gui=NONE
hi Visual ctermfg=NONE ctermbg=241 cterm=NONE guifg=NONE guibg=#44475a gui=NONE
hi CursorLine ctermbg=234 cterm=NONE guifg=NONE guibg=#44475a gui=NONE
hi CursorColumn ctermbg=234 cterm=NONE guifg=NONE guibg=#44475a gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#3d3f49 gui=NONE
hi LineNr ctermfg=60 ctermbg=NONE cterm=NONE guifg=#6272a4 guibg=#282a36 gui=NONE
hi CursorLineNr ctermfg=228 ctermbg=234 cterm=NONE guifg=#f1fa8c guibg=#44475a gui=NONE
hi VertSplit ctermfg=231 ctermbg=236 cterm=bold guifg=#64666d guibg=#64666d gui=bold
hi MatchParen ctermfg=212 ctermbg=NONE cterm=underline guifg=#ff79c6 guibg=NONE gui=underline
hi StatusLine ctermfg=231 ctermbg=236 cterm=bold guifg=#f8f8f2 guibg=#64666d gui=bold
hi StatusLineNC ctermfg=231 ctermbg=236 cterm=NONE guifg=#f8f8f2 guibg=#64666d gui=NONE

" SCHEME COLOR
set tabstop=4
if !exists("g:syntax_on")
	syntax enable
endif

" MAPPING 
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap {} {}<Esc>i
inoremap {<CR> {<CR>}<Esc>ko
inoremap ) <C-R>=ClosePair(')')<CR>
inoremap ] <C-R>=ClosePair(']')<CR>
inoremap } <C-R>=ClosePair('}')<CR>
inoremap " <C-R>=QuoteDelim('"')<CR>
inoremap ' <C-R>=QuoteDelim("'")<CR>

function ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endf

function QuoteDelim(char)
    let line = getline('.')
    let col = col('.')
    if line[col - 2] == "\\"
        "Inserting a quoted quotation mark into the string
        return a:char
    elseif line[col - 1] == a:char
        "Escaping out of the string
        return "\<Right>"
    else
        "Starting a string
        return a:char.a:char."\<Esc>i"
    endif
endf