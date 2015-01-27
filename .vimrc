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
set shiftwidth=2
set tabstop=2
set viminfo='20,\"50
set cindent
set autoindent
set expandtab
set laststatus=2

au BufRead,BufNewFile *.ctp set filetype=php
au BufRead,BufNewFile *.install set filetype=php
au BufRead,BufNewFile *.module set filetype=php
au BufRead,BufNewFile *.inc set filetype=php
au BufRead,BufNewFile *.view set filetype=php
au BufRead,BufNewFile *.ctp set filetype=php
call pathogen#infect()

filetype plugin indent on
colorscheme molokai
set cinkeys-=0#
set indentkeys-=0#
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif 
"set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P\ %{fugitive#statusline()}
let g:nerdtree_tabs_open_on_console_startup=1
let g:symfony_app_console_caller="php"
let g:symfony_app_console_path="app/console"
let g:Powerline_symbols="fancy"
let g:nerdtree_tabs_meaningful_tab_names=1
let g:nerdtree_tabs_autoclose=1
let g:nerdtree_tabs_open_on_new_tab=1
let g:nerdtree_tabs_focus_on_files=1
let g:nerdtree_tabs_smart_startup_focus=1
let g:NERDTreeDirArrows=0
let g:nerdtree_tabs_synchronize_view=1
let feature_filetype='behat'
let NERDTreeShowBookmarks=1
"nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
set encoding=utf-8
set t_Co=256

syntax on

let php_folding=1

fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

autocmd FileType c,cpp,java,php,ruby,python autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

"This allows for change paste motion cp{motion}
nmap <silent> cp :set opfunc=ChangePaste<CR>g@
function! ChangePaste(type, ...)
    silent exe "normal! `[v`]\"_c"
    silent exe "normal! p"
endfunction

let b:phpgetset_setterTemplate =
  \ "\n" .
  \ "    /**\n" .
  \ "     * Set %varname%.\n" .
  \ "     *\n" .
  \ "     * @param %varname% the value to set.\n" .
  \ "     * @return self\n" .
  \ "     */\n" .
  \ "    public function %funcname%($%varname%)\n" .
  \ "    {\n" .
  \ "        $this->%varname% = $%varname%;\n" .
  \ "        \n" .
  \ "        return $this\n" .
  \ "    }"

" vim: set ft=vim :
