set encoding=utf-8
set background=dark

autocmd BufWritePre *.py :%s/\s\+$//e
autocmd BufWritePre *.c :%s/\s\+$//e
autocmd BufWritePre,TextChanged,InsertLeave *.html, *.css, *js Neoformat
