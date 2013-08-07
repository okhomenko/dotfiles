execute pathogen#infect()

" Defaults
set wildmode=list:longest
set number
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
set foldlevel=99
set t_ut=

" Syntax
syntax on
set t_Co=256
set background=dark
colorscheme molokai
" colorscheme Grunge
" colorscheme wombat256mod
let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=235 guibg=#2c2d27
let &colorcolumn="80,".join(range(120,999),",")

filetype plugin indent on

let mapleader = ','

noremap <Leader>f :NERDTreeToggle<CR>

function! UpdateVimRC()
  for server in split(serverlist())
    call remote_send(server, '<Esc>:source $MYVIMRC<CR>')
  endfor
endfunction

augroup myvimrchooks
  au!
  autocmd bufwritepost .vimrc source $MYVIMRC
augroup END
