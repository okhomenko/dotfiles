" Defaults
set wildmode=list:longest
set cursorline
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
" set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
set hlsearch

set listchars=tab:→\ ,trail:·
" set listchars=eol:¬,tab:→\ ,trail:·
set list
" Accomodate for your fat fingers
command! W w
set backupcopy=yes
set grepprg=ack

" Syntax
syntax on
set t_Co=256
set background=dark
colorscheme monokai
let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=235 guibg=#2c2d27
let &colorcolumn="80,".join(range(120,999),",")

filetype plugin indent on

let mapleader = ','

" Insert a linebreak
noremap <leader>j i<Enter><Esc>
noremap <leader>f :NERDTreeToggle<CR>
noremap <leader>n :!node %<CR>
" Change tab stop
map <silent> <leader>t2 :set tabstop=2 softtabstop=2 shiftwidth=2 expandtab<CR>
map <silent> <leader>t4 :set tabstop=4 softtabstop=4 shiftwidth=4 expandtab<CR>
map <silent> <leader>t4f :set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab<CR>

augroup myvimrchooks
  au!
  autocmd bufwritepost .vimrc source $MYVIMRC
augroup END

" CtrlP
" let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra' " CtrlP will set its local working directory
let g:ctrlp_custom_ignore = '\v[\/\\]\.(git|hg|svn)$' " ignore SCM directories
let g:ctrlp_custom_ignore = '\v[\/\\](node_modules|npm-cache)$' " ignore node directories

" Ack
let g:ackprg = 'ag --nogroup --nocolor --column'
map <F3> <Esc>:Ack 

if filereadable(".vim.custom")
  so .vim.custom
endif
