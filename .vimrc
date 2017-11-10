execute pathogen#infect()
set nocompatible
filetype off

set showcmd

 " Folding Stuffs
set foldmethod=marker

syntax enable

set mouse=a

colorscheme badwolf

filetype plugin indent on

syntax enable
set encoding=utf-8
set number
set showmatch
set incsearch
set hlsearch
set wildmenu
set lazyredraw
set backspace=indent,eol,start
set laststatus=2
set statusline=%t\ %y\ format:\ %{&ff};\ [%c,%l]%{fugitive#statusline()}

let mapleader=","
let g:ycm_autoclose_preview_window_after_completion=1
let python_highlight_all = 1

map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
map <C-n> :NERDTreeToggle<CR>
map <C-S-n> :NERDTreeFind<CR>
noremap <F3> :Autoformat<CR>

au BufNewFile,BufRead *.py
    \ set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=120 expandtab autoindent

highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
au BufWinEnter * setlocal modifiable
au BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

