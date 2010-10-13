" general VIM settings
" --------------------

" abandon all pretense that we are using VI. NOTE: this must run first
set nocompatible 

" Pathogen manages the VIM runtimepath so that plugins installed in 
" ~/.vim/bundle are included
filetype off " re-enable after pathogen loads
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin indent on " enable all these at once

" custom keybindings for editing and sourcing vimrc
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" editing options {{{
set nowrap
set tabstop=2
set backspace=indent,eol,start " backspace over all of these in insert mode
set autoindent
set copyindent
set shiftwidth=2
set shiftround " use shiftwidth when using '<' and '>'
set ignorecase " case insensitive searching
set smartcase  " follow ignorecase when search is all lowercase, otherwise case sensitive
set smarttab   " tabs follow shiftwidth not tabstop
set hlsearch   " search terms are highlighted
set incsearch  " incremental search
" }}}

" folding@VIM {{{
set foldenable " do what I mean
set foldopen=block,hor,insert,jump,mark,percent,quickfix,search,tag,undo " auto-unfold on these commands
" }}}

" layout options {{{
set termencoding=utf-8
set encoding=utf-8
set lazyredraw   " prevent updates during macro execution
set laststatus=2 " always display a status line
syntax off       " no syntax hilighting thanks
" }}}

" command options {{{
set directory=$TMPDIR  " keep swapfiles in a nice location 
set wildmenu           " bash-like tab completion
set wildmode=list:full " show completion list
set wildignore=*.swp,*.bak,*.pyc,*.so
set title
set visualbell   " don't beep
set noerrorbells " don't beep!
set showcmd      " Show (partial) command in the last line of the screen
" }}}

" training wheels {{{

" force use of hjkl
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" quick window jumping
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" clear the search register
nmap <slient> <leader>/ :nohlsearch<CR>
" }}}
