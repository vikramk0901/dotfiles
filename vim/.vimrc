echo ">oo<"
let mapleader = "."
let maplocalleader = "\\"
syntax on
" Make spaces more useful
set t_BE=
set number
set relativenumber
set nohlsearch
set expandtab
set shiftwidth=2
set softtabstop=2
set ai
" Leader Mappings ---------------------- {{{
nnoremap <leader>d dd
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel
vnoremap <leader>" v`<i"<esc>`>li"<esc> " Fix this for text with <,> in them
nnoremap <leader>g :silent execute "grep! -R " . shellescape(expand("<cWORD>")) . " ."<cr>:copen<cr>
" }}}
" Mappings ---------------------- {{{ 
nnoremap <space> za
inoremap jk <esc>
inoremap <esc> <Nop>
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
nnoremap H _
nnoremap L g_
onoremap in( :<c-u>normal! f(vi(<cr>
onoremap il( :<c-u>normal! F)vi(<cr>
onoremap p i(
onoremap in{ :<c-u>normal! f{vi{<cr>
onoremap il{ :<c-u>normal! F}vi{<cr>
onoremap p i{
" }}}
" Status Line ----------------------------------------- {{{
set statusline=%f\ -\ FileType:\ %y
set statusline+=%=%l/%L
set laststatus=2
" }}}
" First Automcds written by me --------------------------- {{{
augroup editable
"   autocmd BufWritePre,BufRead *.html :normal gg=G
   autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
   autocmd FileType python nnoremap <buffer> <localleader>c I#<esc>
   autocmd FileType php nnoremap <buffer> <localleader>c I#<esc>
   autocmd FileType javascript :iabbrev <buffer> iff if ()<left>
augroup END
" }}}
" Vimscript file settings ------------------------ {{{
augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}
