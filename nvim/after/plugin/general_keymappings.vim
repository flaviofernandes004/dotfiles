" closer leader key
let mapleader=","

" Disable arrow keys (hardcore)
map  <up>    <nop>
imap <up>    <nop>
map  <down>  <nop>
imap <down>  <nop>
map  <left>  <nop>
imap <left>  <nop>
map  <right> <nop>
imap <right> <nop>


" indenting
nnoremap > >>
nnoremap < <<

"Remapping the movements among windows.
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nmap <Leader>f :Autoformat<CR>
" beter paste ,p
map <Leader>p :set paste<CR>o<esc>"*]p:set nopaste<cr>

" remove whitespace
nnoremap <Leader>rws :%s/\s\+$//e<CR>

" Improve completion popup menu
inoremap <expr> <C-j> pumvisible() ? "\<C-N>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-P>" : "\<C-k>"
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <M-,> pumvisible() ? '<C-n>' :\'<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

"open/closes folds
nnoremap <space> za

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" better undo
nnoremap U <C-r>
nnoremap <C-r> <nop>

nnoremap <C-i> <C-I>
nnoremap <C-o> <C-O>

let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
nnoremap <silent> <C-\> :TmuxNavigatePrevious<cr>

" Search and Replace
nmap <Leader>s :%s//gc<Left><Left><Left>

" buffer navigation
nnoremap <leader>q :bd!<CR>
nnoremap <S-Tab> :bp<CR>
nnoremap <Tab> :bn<CR>
