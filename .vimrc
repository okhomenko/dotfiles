" Defaults
set wildmode=list:longest
set cursorline
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
"set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
set hlsearch

set listchars=tab:→\ ,trail:·
" set listchars=eol:¬,tab:→\ ,trail:·
set list
" Accomodate for your fat fingers
command! W w
set backupcopy=yes
set grepprg=ack

" Enable scrolling with mouse
"set mouse=a

" Enable clipboard to used for copy/paste
set clipboard=unnamed

" Enable numbers of lines in gutter
set number

" Syntax
syntax enable
set t_Co=256
"set t_ut=
""set background=dark
""set &colorcolumn=join(range(81,999),",")
""highlight ColorColumn ctermbg=235 guibg=#2c2d27
""set &colorcolumn="80,".join(range(120,999),",")

""set nocompatible
""filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'bling/vim-airline'
Plugin 'vim-scripts/SyntaxComplete'

" JavaScript Syntax
Plugin 'othree/yajs.vim'
Plugin 'othree/es.next.syntax.vim'

" JavaScript libraries autocomplete support (angular, underscore etc)
Plugin 'othree/javascript-libraries-syntax.vim'

" Local .vimrc plugin
Plugin 'MarcWeber/vim-addon-local-vimrc'

" Node support (gf - goto file)
Bundle 'moll/vim-node'

" Surround
Plugin 'tpope/vim-surround'

" Ack (Ag) support
Plugin 'mileszs/ack.vim'

" CtrlP - for fast file search
Plugin 'kien/ctrlp.vim'

" NerdTree - file explorer
Plugin 'scrooloose/nerdtree'

" Show buffers list in status line
Plugin 'bling/vim-bufferline'

" Syntax checker (linter). Support jshint
Plugin 'scrooloose/syntastic'

" Git gutter
Plugin 'airblade/vim-gitgutter'

" OceanicNext vim scheme
Plugin 'mhartington/oceanic-next'
" Plugin 'yosiat/oceanic-next-vim'

call vundle#end()
"colorscheme base16-oceanicnext
colorscheme OceanicNext

filetype plugin indent on

let mapleader = ','

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Insert a linebreak
noremap <leader>j i<Enter><Esc>
noremap <leader>f :NERDTreeToggle<CR>
noremap <leader>n :!node %<CR>
noremap <leader>b :!babel-node %<CR>

" GitGutter settings
"noremap <leader>gf :GitGutterNextHunk<CR>
"noremap <leader>gb :GitGutterPrevHunk<CR>

" Change tab stop
map <silent> <leader>t2 :set tabstop=2 softtabstop=2 shiftwidth=2 expandtab<CR>
map <silent> <leader>t4 :set tabstop=4 softtabstop=4 shiftwidth=4 expandtab<CR>
map <silent> <leader>t4f :set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab<CR>

" open each buffer in its own tabpage
" au BufAdd,BufNewFile * nested tab sball

augroup myvimrchooks
  au!
  autocmd bufwritepost ~/.vimrc silent! source $MYVIMRC
"  autocmd bufwritepost .vimrc.custom source .vimrc.custom
augroup END

" VIMRC local
let g:local_vimrc = {'names':['.vimrc'],'hash_fun':'LVRHashOfFile'}

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

"if filereadable(".vimrc.custom")
"  so .vimrc.custom
"endif


