" set runtimepath^=~/.vim runtimepath+=~/.vim/after
" let &packpath = &runtimepath

" source ~/.vim/filetype.vim
" source ~/.vim/syntax/iris.vim
" source ~/.vimrcset number " Show line numbers

set is
set linebreak
set textwidth=75
set tabstop=4
set shiftwidth=4
set softtabstop=0
set expandtab
set printoptions=paper:letter
set laststatus=2
set hls
set nowrap
set ruler "Show cursor position
set showcmd "Show incomplete command
set incsearch "Show incremental search results
set inccommand=split "Show incremental search results in :substitute
set foldmethod=manual
set foldcolumn=1
set relativenumber
set number
set nocursorcolumn
set cursorline
set mouse=a

" Invisible characters
set list
set listchars=
"set listchars+=space:·
set listchars+=trail:◦
set listchars+=eol:⌞
set listchars+=nbsp:⌴
set listchars+=extends:»
set listchars+=precedes:«
set listchars+=tab:•-▻

set splitright "New vertical split is right of the current one
set splitbelow "New horizontal split is below the current one

set grepprg=/usr/local/bin/ggrep\ -I\ --exclude-dir=.git\ -n\ $*\ /dev/null

set fo-=t " Prevent lines from being hard wrapped, use gq to hard wrap manually
" highlight Comment ctermfg=28

" Hard wrap lines at textwidth (set above)
autocmd FileType latex setlocal fo+=t|setlocal fo-=l
autocmd FileType matlab setlocal fo-=t|setlocal fo+=l
autocmd FileType iris setlocal fo-=t|setlocal fo+=l

let g:html_font = "sf mono"

vmap /% :s/^/% /g<CR>:noh<CR>
vmap ?% :s/^\( *\)% \?/\1/g<CR>:noh<CR>

" Enclose a visual selection in %{___%}
vmap \{ <Esc>`<O%{<Esc>`>o%}<Esc>
nmap \} ^e%mo%dd`odd

" Toggle soft wrap
nmap \w :set wrap!<CR>

vmap /# :s/^\( *\)/\1# /g<CR>:noh<CR>
vmap ?# :s/^\( *\)# \?/\1/g<CR>:noh<CR>

vmap /> :s/^\( *\)/> /g<CR>:noh<CR>
vmap ?> :s/^\( *\)> \?/\1/g<CR>:noh<CR>

vmap /' :s/^\( *\)/\1' /g<CR>:noh<CR>
vmap ?' :s/^\( *\)' \?/\1/g<CR>:noh<CR>

map \b :b#<CR>:bw#<CR>
map \p
    \:TOhtml<CR>
    \:%s;<style type="text\/css">\_.\{-}<\/style>;<link rel="stylesheet" type="text/css" href="/Users/myself/Documents/myself/.vim/hardcopy.css">;g<CR>
    \:saveas! $ha/%:p:t<CR>
    \:bw! #<CR>
    \:!"/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" "%:p"<CR>
    \:clo<CR>
    \:bw #<CR>
map \tm :wa<CR> :!cd %:p:h ; xelatex main.tex<CR><CR>
map \tt :wa<CR> :!cd %:p:h ; xelatex %:p<CR><CR>
map \. i............................... <Esc>
map \> :s/^% */%>    /<CR>:noh<CR>
map [q :cprevious<CR>
map ]q :cnext<CR>
map [Q :cfirst<CR>
map ]Q :clast<CR>
map QQ :cexpr []<CR>

map \s O<Esc>75i <Esc>j0
nmap \m :cex system('xmlint ' . expand('%'))<CR> :copen <CR>

nmap \a o

tmap <Esc> <C-\><C-n>

" Move between windows
" To overwrite default maps in netrw, the same maps are also in
" .vim/after/ftplugin/netrw.vim
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
nmap <esc><esc> :noh<cr>

" Toggle folds
nnoremap <Space> za

map \h :call SynGroup()<CR>
map \r $?^%%<CR>V/\(^%%\\|\%$\)<CR>k"*y:noh<CR><C-w>lpi<CR><Esc><C-w>h
map \v y<C-w>lpi<CR><Esc><C-w>h
map \f :let @a='run '.@%<CR><C-w>l"api<CR><Esc><C-w>h


let $BASH_ENV="~/Documents/myself/.bashrc"


set shell=/usr/local/bin/bash
set hidden " Prevent abandoned terminal buffers to be wiped out

set comments-=:%
set comments+=:%>
set comments+=:%
set comments+=:>

set fillchars=
" set fillchars+=vert:┃
set fillchars+=vert:╽
"set fillchars+=vert:║
"set fillchars+=foldopen:⎛ 
"set fillchars+=foldopen:╒
set fillchars+=foldopen:╭
set fillchars+=foldsep:│
set fillchars+=foldclose:◆
set fillchars+=eob:\ 
" set fillchars+=vert:\|

if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" Tell the syntax highlight group under the cursor
function! SynGroup()
    let l:s = synID(line('.'), col('.'), 1)
    echo synIDattr(l:s, 'name') . ' -> ' . synIDattr(synIDtrans(l:s), 'name')
endfun

setglobal fileencoding=utf-8

source ~/.config/nvim/highlight.vim

syntax enable

let g:netrw_winsize=0
let g:netrw_keepdir=1 " Set =0 to make mm work in netrw
let g:netrw_browse_split=0
let g:netrw_liststyle=3

command! -bar W :w | silent !open -g 'x-marked://refresh'; open -g 'x-marked://refresh'; open -g 'x-marked://refresh' 

" git gutter
set signcolumn=auto "yes no

" git diff
command! 
   \ -bar Gd 
   \ :enew 
   \ | execute 'r !git diff' 
   \ | silent %s:^diff --git a/\(.*\) \(b/.*\):\r\r\r\0\r!git add ./\1:g 
   \ | noh 
   \ | set ft=gitdiff 
   \ | setlocal fdm=syntax 
   \ | normal gg4dd

" command! -bar Gx :setlocal nows | normal $?^diff<CR>jv/\ze\ndiff\|\%$<CR>:s/^/:: /<CR>:setlocal ws<CR>:noh<CR>

