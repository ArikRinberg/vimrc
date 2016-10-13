"==========================================================
if !empty(glob("~/.vim/autoload/pathogen.vim"))
   " Load bundles
    execute pathogen#infect()
endif
" Set mapleader as ,
let mapleader = ","
"==========================================================


"==========================================================
" indentLine  settings:
"==========================================================

let g:indentLine_char = '¦'
let g:indentLine_color_term = 239

"==========================================================
" General settings:
"==========================================================
" Color scheme
syntax on
color koehler

" make backspace work normally
set backspace=2

set term=konsole
set textwidth=0 wrapmargin=0
set tw=0

" white space symbols when list enabled
set listchars=eol:¬,tab:▸-,trail:~,extends:>,precedes:<

"Invisible character colors
highlight NonText guifg=#4a4a59 " = eol
highlight SpecialKey guifg=#a84630 " = tab

set tabstop=4 shiftwidth=4 expandtab

" Highligh search results
set hlsearch

" Shortcut to rapidly toggle `set list`
nnoremap <leader>l :set list!<CR>

"set relativenumber " enables relative numbers
set number
set numberwidth=1 " numbers offset from leftside

function! SwitchNumber()
    if (&number)
        set relativenumber
    else
        set number
    endif
endfunction

nnoremap <leader>n :call SwitchNumber()<CR>
if !empty(glob("~/.vim/bundle/indentLine"))
    nnoremap <leader>i :IndentLinesToggle<CR>
endif

