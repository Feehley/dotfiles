syntax enable

set nu
set cursorline
set shiftwidth=4
set tabstop=4
set noerrorbells vb t_vb=

nnoremap <DOWN> gj
nnoremap <UP> gk

colorscheme elflord

" Courtesy of Heptadecagram (https://github.com/heptadecagram)
" ############################################################
if has("autocmd")
    autocmd BufRead *   silent! %s/[\r \t]\+$/
endif " has("autocmd")
" ############################################################

" Persistent Undo
try
    set undodir=~/.vim_runtime/undodir
    set undofile
    set undolevels=100
    set undoreload=100
catch
endtry
