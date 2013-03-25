execute pathogen#infect()

" Defaults
set wildmode=list:longest
set number
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
set foldlevel=99

" Syntax
syntax on
set t_Co=256
set background=dark
colorscheme Grunge
" colorscheme wombat256mod

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
