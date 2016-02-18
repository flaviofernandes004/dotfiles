let g:deoplete#enable_at_startup=1
let g:deoplete#auto_complete=1


let g:LanguageClient_autoStart = 1

let g:LanguageClient_serverCommands = {
    \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
    \ }

nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>

" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"

let g:neocomplete#enable_at_startup = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3

let g:racer_cmd = $HOME."/.cargo/bin/racer"
let g:racer_experimental_completer = 1
let g:deoplete#sources#rust#racer_binary=$HOME."/.cargo/bin/racer"
let g:deoplete#sources#rust#rust_source_path=$RUST_SRC_PATH
let g:deoplete#sources#rust#show_duplicates=1
let g:deoplete#sources#rust#documentation_max_height=40

" deoplete-go settings
let g:deoplete#sources#go#gocode_binary = $HOME.'/.asdf/shims/gocode'
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
