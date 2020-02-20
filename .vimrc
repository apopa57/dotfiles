"appearance

set cul
set hidden
set linebreak
" set list
set listchars=tab:▸\ ,eol:¬
set number
set ruler
set showcmd

" behavior

set shiftwidth=2
set softtabstop=2
set expandtab
set tabstop=2

set incsearch
set undofile
set undodir=$VIMDATA/undo

" Mappings in the style of unimpaired-next
nmap <silent> [W <Plug>(ale_first)
nmap <silent> [w <Plug>(ale_previous)
nmap <silent> ]w <Plug>(ale_next)
nmap <silent> ]W <Plug>(ale_last)

autocmd BufWritePre * %s/[ ]\+$//e
