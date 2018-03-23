syntax enable
colorscheme elflord
autocmd BufRead *	silent! %s/[\r \t]\+$/

set nu cursorline
set foldenable foldmethod=syntax foldlevelstart=1
set shiftwidth=4 tabstop=4
set noerrorbells vb t_vb=
set hlsearch
set incsearch

hi Visual term=reverse cterm=reverse guibg=Grey

nnoremap <DOWN> gj
nnoremap <UP> gk
nnoremap <C-LEFT> zc
nnoremap <C-RIGHT> zo

let fileName = expand('%:e')
if (fileName == 'py')
	nnoremap <buffer> H :<C-u> execute "!pydoc " . expand("<cword>")<CR>
	nnoremap <C-DOWN> 0i#<ESC>
	nnoremap <C-UP> 0x<ESC>
elseif (fileName == 'c' || fileName == 'cpp')
    nnoremap <buffer> H :<C-u> execute "!man " . expand("<cword>")<CR>
	nnoremap <C-DOWN> 0i//<ESC>
	nnoremap <C-UP> 0xx<ESC>
elseif (fileName == 'sh' || fileName == 'bash')
    nnoremap <buffer> H :<C-u> execute "!" . expand("<cword>") " --help"<CR>
	nnoremap <C-DOWN> 0i#<ESC>
	nnoremap <C-UP> 0x<ESC>
endif

try
	set undodir=~/.vim_runtime/undodir undofile
	set undolevels=100 undoreload=100
catch
endtry
