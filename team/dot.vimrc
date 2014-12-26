set nocompatible
filetype off

" set scrolloff=8
set foldmethod=syntax
set nofoldenable
let g:ctrlp_working_path_mode = 'a'

noremap <F1> <nop>
inoremap <F1> <nop>
    " disable the F1 help key because I hit it when trying to hit escape

" reload .vimrc
noremap <Leader>vrc :so $MYVIMRC<CR>

let mapleader = ","

"---- Exclude things from CtrlP and others when searching
set wildignore+=doc/*,*.swp,*.zip,log/*,tmp/*,.git/*,node_modules/*
let g:ctrlp_custom_ignore = 'node_modules\|.DS_Store\|\.git'

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

"----let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

"----our experimental bundles

" Plugin 'Lokaltog/vim-easymotion'
" Plugin 'altercation/vim-colors-solarized'

"----team bundles
" Plugin 'bling/vim-airline'
Plugin 'bronson/vim-trailing-whitespace'
" Plugin 'chriskempson/base16-vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'kana/vim-textobj-user'
" Plugin 'kchmck/vim-coffee-script'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'pangloss/vim-javascript'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'vim-ruby/vim-ruby'
Plugin 'flazz/vim-colorschemes'
set t_Co=256

set tabstop=4
set shiftwidth=4
set expandtab
set number
set showcmd
set autoindent
set smartcase       " Case insensitive searches become sensitive with capitals
set smarttab        " sw at the start of the line, sts everywhere else
set visualbell
set nowrap
set clipboard=unnamed

"#ejs
au BufNewFile,BufRead *.ejs set filetype=html

"let g:airline_powerline_fonts = 1
"let g:airline_theme             = 'bubblegum'
"let g:airline_enable_branch     = 1
"let g:airline#extensions#syntastic#enabled = 1
"let g:airline#extensions#whitespace#enabled = 0
"let g:airline_section_x = airline#section#create([""])
"let g:airline_section_y = airline#section#create([""])

"open files with ctrl-p in tab by default
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }
nnoremap <leader>. :CtrlPTag<cr>

" nerdtree
map <C-0> :NERDTreeToggle<CR>

" shortcuts for esc
:imap jj <Esc>
:imap jk <Esc>

" tab shortcuts
nnoremap th  :tabfirst<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>

" Leader shortcuts for Rails commands
noremap <Leader>m :Rmodel
noremap <Leader>c :Rcontroller
noremap <Leader>v :Rview
noremap <Leader>u :Runittest
noremap <Leader>f :Rfunctionaltest
noremap <Leader>tm :RTmodel
noremap <Leader>tc :RTcontroller
noremap <Leader>tv :RTview
noremap <Leader>tu :RTunittest
noremap <Leader>tf :RTfunctionaltest
noremap <Leader>sm :RSmodel
noremap <Leader>sc :RScontroller
noremap <Leader>sv :RSview
noremap <Leader>su :RSunittest
noremap <Leader>sf :RSfunctionaltest

noremap <Leader>fws :FixWhitespace

" shortcuts for ctags
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

nmap <Leader>b :TagbarToggle<CR>

filetype plugin indent on
