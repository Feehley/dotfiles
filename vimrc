syntax enable
colorscheme elflord
autocmd BufRead *   silent! %s/[\r \t]\+$/

set nu cursorline
set foldenable foldmethod=syntax foldlevelstart=1
set shiftwidth=4 tabstop=4
set noerrorbells vb t_vb=

nnoremap <DOWN> gj
nnoremap <UP> gk
nnoremap <C-LEFT> zc
nnoremap <C-RIGHT> zo

try                                                                       
    set undodir=~/.vim_runtime/undodir undofile
    set undolevels=100 undoreload=100
catch
endtry
