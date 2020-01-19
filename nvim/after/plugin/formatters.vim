" Verbose
" let g:autoformat_verbosemode = 1

" Format rust code
let g:formatdef_rustfmt = '"rustfmt"'
let g:formatters_rust = ['rustfmt']

" Format bash scrip code
let g:formatdef_beauty = '"~/beautify_bash.rb - "'
let g:formatters_sh = ['beauty']
let g:formatters_zsh = ['beauty']

autocmd BufWritePre *.py execute ':Black'
