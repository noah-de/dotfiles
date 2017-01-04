" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
" Noah's plugins
Plug 'vim-markdown-preview'
Plug 'vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Initialize plugin system
call plug#end()
" Noah's options
let g:airline_powerline_fonts = 1

set expandtab                   " Uses spaces instead of tab characters
set smarttab                    " Helps with backspacing because of expandtab
set softtabstop=2               " Number of spaces that a tab counts for
set shiftwidth=2                " Number of spaces to use for autoindent
set shiftround                  " Rounds indent to a multiple of shiftwidth

set nojoinspaces                " Prevents inserting two spaces after punctuation on a join (it's not 1990 anymore)
set lazyredraw                  " Will not redraw the screen while running macros (goes faster)
set pastetoggle=<F9>            " Useful so auto-indenting doesn't mess up code when pasting

set complete-=t,i               " Remove tags and included files from default insert completion

set virtualedit=block           " Let cursor move past the last char in <C-V> mode
set nostartofline               " Avoid moving cursor to BOL when jumping around

set cryptmethod=blowfish        " Use (much) stronger blowfish encryption

set number                      "nu:    show the actual line number for the current line in relativenumber
set showmode                    "smd:   shows current vi mode in lower left
set cursorline                  "cul:   highlights the current line
set showcmd                     "sc:    shows typed commands
set cmdheight=1                 "ch:    make a little more room for error messages
set sidescroll=2                "ss:    only scroll horizontally little by little
set scrolloff=1                 "so:    places a line between the current line and the screen edge
set sidescrolloff=2             "siso:  places a couple columns between the current column and the screen edge
set laststatus=2                "ls:    makes the status bar always visible
set ttyfast                     "tf:    improves redrawing for newer computers
set history=200                 "hi:    number of search patterns and ex commands to remember
                                "       (also used by viminfo below for /, :, and @ options)
set viminfo='200                "vi:    For a nice, huuuuuge viminfo file

syntax enable
colorscheme macvim
highlight LineNr ctermfg=grey ctermbg=white

if &columns < 88
    " If we can't fit at least 80-cols, don't display these screen hogs
    set nonumber
    set foldcolumn=0
endif


" Shows line numbers and adjusts the left margin not to be ridiculous
set printoptions=number:y,left:5pc
set printfont=Monaco:h8         " face-type (not size) ignored in PostScript output :-(
set printencoding=utf-8

set showmatch                   " Flashes matching brackets or parentheses
set showmode                    "smd:   shows current vi mode in lower left
set cursorline                  "cul:   highlights the current line
set laststatus=2                "ls:    makes the status bar always visible

" Make listchars (much) more noticable.
au ColorScheme * hi SpecialKey ctermfg=7 ctermbg=1

" A nice, minimalistic tabline.
au ColorScheme * hi TabLine cterm=bold,underline ctermfg=8 ctermbg=none
au ColorScheme * hi TabLineSel cterm=bold ctermfg=0 ctermbg=7
au ColorScheme * hi TabLineFill cterm=bold ctermbg=none

" Black ColorColumn to not catch the eye more than is necessary
au ColorScheme * hi ColorColumn ctermbg=0

" Makes the current line stand out with bold and in the numberline
au ColorScheme * hi CursorLine cterm=bold
au ColorScheme * hi LineNr cterm=bold ctermfg=0 ctermbg=none

" Match the Sign column to the number column
au ColorScheme * hi SignColumn cterm=bold ctermfg=0 ctermbg=none

set colorcolumn=79              " Draw a visual line down the 80th column
set textwidth=79

set synmaxcol=500               " Stop syntax highlighting on very long lines

let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=235 guibg=#2c2d27

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
