set nocompatible              " be iMproved, required
filetype off                  " required

"Vundle Plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'marijnh/tern_for_vim'
Plugin 'bling/vim-airline'
call vundle#end()            " required
filetype plugin indent on    " required

" line numbers
set number

" jk!!
:imap jk <Esc>

" :Q for quitting, since we're too slow with our shift key
:command! -bar -bang Q quit<bang>

" Tab navigation like Firefox.
nnoremap <C-t>     :tabnew<CR>
inoremap <C-t>     <Esc>:tabnew<C>

" NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let NERDTreeShowHidden=1

" timeout between succesive keystrokes for shortcuts (e.g. jk)
set timeoutlen=100

" no swap file while editing, we never crash
set noswapfile

" some extra smart stuff
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase, case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint', 'flow']

" YouCompleteMe code completion
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview

" Coloring
syntax enable
colorscheme monokai


hi SpellBad ctermfg=197 ctermbg=NONE guifg=#f8f8f0 guibg=NONE
hi SpellCap ctermfg=197 ctermbg=NONE guifg=#f8f8f0 guibg=NONE


