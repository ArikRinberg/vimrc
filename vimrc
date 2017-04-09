silent! call s:VimEnter(expand("<amatch>"))
"==========================================================
if !empty(glob("~/.vim/autoload/pathogen.vim"))
   " Load bundles
    execute pathogen#infect()
endif
" Set mapleader as ,
let mapleader = ","
"==========================================================

if has("autocmd")
    " Enable file type detection
    filetype on
    augroup my_autocmds
        autocmd!
        autocmd InsertEnter * :set number
        autocmd InsertLeave * :set relativenumber
  augroup END
endif

"==========================================================
" indentLine  settings:
"==========================================================

let g:indentLine_char = '¦'
let g:indentLine_color_term = 239
let g:indentLine_enabled = 0

if !empty(glob("~/.vim/bundle/indentLine"))
    nnoremap <leader>i :IndentLinesToggle<CR>
endif
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

" Highlight starting from 81 chars
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" Shortcut to rapidly toggle `set list`
nnoremap <leader>l :set list!<CR>

"set relativenumber " enables relative numbers
set relativenumber
set numberwidth=1 " numbers offset from leftside

function! SwitchNumber()
    if (&number)
        set relativenumber
    else
        set number
    endif
endfunction

nnoremap <leader>n :call SwitchNumber()<CR>

map <Tab>n :tabn<CR>
