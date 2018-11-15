" be iMproved, required
set nocompatible

"Helps force plugins to load correctly when it is turned back on below,required
filetype off

  " Status bar
set rtp+=~/.vim/bundle/Vundle.vim

" Status bar
set laststatus=2
" backspace in insert mode works like normal editor
set backspace=2

" Whitespace
set tabstop=4
set shiftwidth=4
set expandtab

" Ignore case when searching
set ignorecase

" Color scheme (terminal)
set t_Co=256

"set termguicolors

"highlight current line
set cursorline
" indentLine character
let g:indentLine_char ='┆'
let base16colorspace=256
let g:jsx_ext_required = 0

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.
Plugin 'scrooloose/nerdtree'

"status tabline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"show modified lines from last commit
Plugin 'airblade/vim-gitgutter'

Plugin 'tpope/vim-fugitive'
Plugin 'othree/yajs.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-commentary'

"Fancy start screen
Plugin 'mhinz/vim-startify'

"javascript syntax
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

"este coso busca
Plugin 'ctrlpvim/ctrlp.vim'
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l —nocolor —hidden -g ""'

"snipets
Plugin 'SirVer/ultisnips'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'isRuslan/vim-es6'
Plugin 'honza/vim-snippets'

Plugin 'chriskempson/base16-vim'

" required by tsuquyomi
Plugin 'Shougo/vimproc.vim'
"client for TSServer
Plugin 'Quramy/tsuquyomi'
"typescript syntax
Plugin 'leafgarland/typescript-vim'

" All of your Plugins must be added before the following line
call vundle#end()
" show line numbers
set number

" set ctrl+n start NERDTree
map <C-n> :NERDTreeToggle<CR>
let g:javascript_enable_domhtmlcss = 1

"let g:neocomplete#enable_at_startup = 1
"let g:neocompleteauto_completion_start_length = 3

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme ='term'

"Deoplete - a Replace for neovim
let g:deoplete#enable_at_startup = 1

autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS

" Syntax and colorscheme
syntax on
"colorscheme jellyx
"colorscheme base16-default-dark
colorscheme gruvbox
" activates indenting for files
filetype plugin indent on

