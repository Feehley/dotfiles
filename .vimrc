" Visuals {{
syntax enable
colorscheme elflord
set ttyfast lazyredraw "rendering of tty
set nu cursorline      "Line numbers and line
set title mouse=a      "Window title and allowing mouse clicks
set colorcolumn=80
set splitright
" set foldenable foldmethod=syntax foldlevelstart=1
"}}

set noerrorbells vb t_vb=

" Tab and Space Settings {{
set shiftwidth=4 tabstop=4
autocmd BufRead *	silent! %s/[\r \t]\+$/
"}}

" Search Settings {{
set hlsearch incsearch
set ignorecase smartcase
hi Visual term=reverse cterm=reverse guibg=Grey
"}}

" Status Information {{
set laststatus=2       "Enabling status bar
set statusline=<<\ %F\ %y\ >>  "filename filetype
set statusline+=%=     "right align
set statusline+=[%{&fileformat}\] "file format
set statusline+=\ <<\ %l/%L\ \[%p%%\]\ >>"current line/overall lines [percentage through file]
set statusline+=\ %{strftime('%T')}
"}}

"Mapping Keys {{
nnoremap <DOWN> gj
nnoremap <UP> gk
nnoremap <C-LEFT> zc
nnoremap <C-RIGHT> zo
nnoremap <C-j> <C-w><C-h>
nnoremap <C-k> <C-w><C-l>
nnoremap <F5> i<C-R>=strftime(%Y-%m-%d %H-%M-%S %z %Z --")<CR> " Note Line out of insert mode
inoremap <F5> <C-R>=strftime(%Y-%m-%d %H-%M-%S %z %Z --")<CR> " Note Line in insert mode
nnoremap <F3> :set number!<CR> # Invert Line Numbers -- remove/insert them out of insert mode
inoremap <F3> :set number!<CR> # Invert Line Numbers -- remove/insert them in of insert mode
"}}

" Grabbing Filetypes {{
let fileExt = expand('%:e')
let fileName = expand('%:t')

if (fileName != 'Makefile' && fileExt != 'mk')
    set expandtab
endif

if (fileExt == 'py')
	nnoremap <buffer> H :<C-u> execute "!pydoc " . expand("<cword>")<CR>
	nnoremap <C-DOWN> 0i#<ESC>
	nnoremap <C-UP> 0x<ESC>
elseif (fileExt == 'c' || fileExt == 'cpp')
    nnoremap <buffer> H :<C-u> execute "!man " . expand("<cword>")<CR>
	nnoremap <C-DOWN> 0i//<ESC>
	nnoremap <C-UP> 0xx<ESC>
elseif (fileExt == 'sh' || fileExt == 'bash')
    nnoremap <buffer> H :<C-u> execute "!" . expand("<cword>") " --help"<CR>
	nnoremap <C-DOWN> 0i#<ESC>
	nnoremap <C-UP> 0x<ESC>
endif
"}}


" Persistent Undo {{
try
	set undodir=~/.vim_runtime/undodir undofile
	set undolevels=100 undoreload=100
catch
endtry
"}}
