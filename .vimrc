execute pathogen#infect()

" Defaults
set wildmode=list:longest
set cursorline
set number
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
" set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
set foldlevel=99
set t_ut=
set hlsearch
set nospell

set listchars=tab:→\ ,trail:·
" set listchars=eol:¬,tab:→\ ,trail:·
set list
" Accomodate for your fat fingers
command! W w
set backupcopy=yes

" Syntax
syntax on
set t_Co=256
set background=dark
colorscheme molokai
colorscheme Grunge
colorscheme wombat256mod
let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=235 guibg=#2c2d27
let &colorcolumn="80,".join(range(120,999),",")

filetype plugin indent on

let mapleader = ','

" Insert a linebreak
noremap <leader>j i<Enter><Esc>
noremap <leader>f :NERDTreeToggle<CR>
noremap <leader>n :!node %<CR>
noremap <leader>c :!coffee %<CR>
" Change tab stop
map <silent> <leader>t2 :set tabstop=2 softtabstop=2 shiftwidth=2 expandtab<CR>
map <silent> <leader>t4 :set tabstop=4 softtabstop=4 shiftwidth=4 expandtab<CR>

function! UpdateVimRC()
  for server in split(serverlist())
    call remote_send(server, '<Esc>:source $MYVIMRC<CR>')
  endfor
endfunction

augroup myvimrchooks
  au!
  autocmd bufwritepost .vimrc source $MYVIMRC
augroup END

" Folding base on indentation and 2 spaces
au BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable
au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra' " CtrlP will set its local working directory
set wildignore+=*.swp     " ignore files Linux/MacOSX
let g:ctrlp_custom_ignore = '\v[\/\\]\.(git|hg|svn)$' " ignore SCM directories
let g:ctrlp_custom_ignore = '\v[\/\\]node_modules$' " ignore SCM directories

if filereadable(".vim.custom")
  so .vim.custom
endif
