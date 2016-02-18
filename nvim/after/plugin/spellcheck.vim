" turn on spelling for markdown files
autocmd BufRead,BufNewFile *.md setlocal spell complete+=kspell
autocmd BufRead,BufNewFile *.md setlocal wrap
autocmd BufRead,BufNewFile *.md hi SpellBad guibg=#ff2929 guifg=#ffffff" ctermbg=224

autocmd BufRead,BufNewFile *.tex setlocal spell complete+=kspell
autocmd BufRead,BufNewFile *.tex setlocal wrap
autocmd BufRead,BufNewFile *.tex hi SpellBad guibg=#ff2929 guifg=#ffffff" ctermbg=224

autocmd BufRead,BufNewFile *.txt setlocal spell complete+=kspell
autocmd BufRead,BufNewFile *.txt setlocal wrap
autocmd BufRead,BufNewFile *.txt hi SpellBad guibg=#ff2929 guifg=#ffffff" ctermbg=224

