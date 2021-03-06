set nocompatible              " be iMproved, required
filetype off                  " required
filetype plugin indent on    " required

execute pathogen#infect()

" line numbers
set number

" jk!!
:imap jk <Esc>

" :Q for quitting, since we're too slow with our shift key
:command! -bar -bang Q quit<bang>

" timeout between succesive keystrokes for shortcuts (e.g. jk)
set timeoutlen=100

" no swap file while editing, we never crash
set noswapfile

" Coloring
syntax enable
colorscheme monokai

hi SpellBad ctermfg=197 ctermbg=NONE guifg=#f8f8f0 guibg=NONE
hi SpellCap ctermfg=197 ctermbg=NONE guifg=#f8f8f0 guibg=NONE

:let g:notes_directories = ['~/Desktop/Notes']
:let g:notes_suffix = '.md'
:let g:notes_shadowdir = '~/.vim-notes/shadow'

