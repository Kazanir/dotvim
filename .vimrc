version 6.0
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
nmap gx <Plug>NetrwBrowseX
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
let &cpo=s:cpo_save
unlet s:cpo_save
set background=dark
set backspace=indent,eol,start
set fileencodings=utf-8,latin1
set helplang=en
set history=50
set hlsearch
set ruler
set shiftwidth=4
set tabstop=4
set viminfo='20,\"50
set cindent
set autoindent
set expandtab
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set laststatus=2
au BufRead,BufNewFile *.ctp set filetype=php
call pathogen#infect()
syntax on
filetype plugin indent on
colorscheme solarized
set cinkeys-=0#
set indentkeys-=0#
autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" vim: set ft=vim :
