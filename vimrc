syntax enable

"set statements
set nu
set cursorline
set shiftwidth=4
set tabstop=4
set noerrorbells

"remap keys
nnoremap <DOWN> gj
nnoremap <UP> gk

"set color
"colorscheme elflord

"closing statements
"inoremap { {}<Esc>i
"inoremap ( ()<Esc>i
"inoremap [ []<Esc>i
"inoremap " ""<Esc>i
"inoremap ' ''<Esc>i
"inoremap < <><Esc>i
"inoremap <CR> ;<CR><Esc>i

"Persistent Undo
try
    set undodir=~/.vim_runtime/temp_dirs/undodir
    set undofile
    set undolevels=100
    set undoreload=100
catch
endtry
