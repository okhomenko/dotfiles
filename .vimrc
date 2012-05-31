" Editor defaults
set wildmode=list:longest
set ff=unix
set number
set nobackup
set ai
set modeline
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
set backspace=indent,eol,start
set nocompatible
set showmatch
set incsearch
set hidden
set history=1000
set title
set ruler
set backupdir=/tmp
set directory=/tmp
set foldmethod=manual
set vb
set colorcolumn=70
set clipboard=unnamed

" Syntax
syntax on
set background=dark
color wombat256mod
filetype plugin on
filetype indent off

" Testing out unicode support
if has("multi_byte")
  if &termencoding == ""
    let &termencoding = &encoding
  endif
  set encoding=utf-8
  setglobal fileencoding=utf-8
  "setglobal bomb
  set fileencodings=ucs-bom,utf-8,latin1
endif

" Custom filetypes
au BufNewFile,BufRead *.md set ft=markdown
au BufWritePost *.coffee CoffeeLint | cwindow | redraw!
augroup vimrc
  au BufReadPre *.coffee setlocal foldmethod=indent
  au BufWinEnter *.coffee if &fdm == 'indent' | setlocal foldmethod=manual | endif
augroup END

" Change tabline colors
hi! TabLineFill term=underline cterm=underline gui=underline

hi! TabLineFillEnd term=underline cterm=underline gui=underline
      \ ctermfg=white ctermbg=black guifg=white guibg=black

" Change column color
hi ColorColumn ctermbg=235 guibg=darkgrey
" Change background color
hi Normal ctermfg=252 ctermbg=234 cterm=none guifg=#e3e0d7 guibg=darkgrey gui=none
hi LineNr ctermfg=241 ctermbg=234 cterm=none guifg=#857b6f guibg=#242424 gui=none

" Save folds
" au BufWinLeave * silent! mkview
" au BufWinEnter * silent! loadview

" GUI Stuff
if has('gui_running')
    set mouse=a
    set background=light
    color solarized
    set guioptions+=mTrbLl
    set guioptions-=mTrbLl
    set guifont=Menlo:h12

    set cursorline

    " Change font size
    map <silent> <leader>+ :set guifont=Menlo:h14<CR>
    map <silent> <leader>- :set guifont=Menlo:h12<CR>
endif

" Fix ' uselessness with marks
nnoremap ' `
nnoremap ` '

" Accomodate for your fat fingers
command! W w

" Leader
let mapleader = ","

" Insert a linebreak
noremap <leader>j i<Enter><Esc>

"Automatically reload .vimrc if it changes
autocmd! bufwritepost .vimrc source %

" Change tab stop
map <silent> <leader>t2 :set tabstop=2 softtabstop=2 shiftwidth=2 expandtab<CR>
map <silent> <leader>t4 :set tabstop=4 softtabstop=4 shiftwidth=4 expandtab<CR>

" Copy whole document to clipboard
map <silent> <leader>cd magg"+yG'a
" Paste from clipboard
map <silent> <leader>P <SHIFT>'+P
map <silent> <leader>p <SHIFT>'+p

" NERDTree
let NERDTreeChDirMode = 1
map <silent> <leader>f :NERDTreeToggle<CR>

" Taglist
let Tlist_Use_Right_Window = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Show_One_File = 1
let Tlist_WinWidth = 40
let Tlist_javascript_Hide_Extras = ['type']
map <silent> <leader><space> :TlistToggle<CR>

" Better buffer management
map <silent> <leader>b :buffers<CR>:buffer<Space>

" Surround a line with a tag
map <leader>tw ysst

" Search
map <leader>s :execute "vimgrep /" . expand("<cword>") . "/j **" <Bar> cw<CR>

" Sudo write (,W) (stolen from gf3)
map <leader>W :w !sudo tee %<CR>

" Map Cmd+s on save
map <M-s> :w<kEnter>  "Works in normal mode, must press Esc first"
imap <M-s> <Esc>:w<kEnter>i "Works in insert mode, saves and puts back in insert mode"

call pathogen#infect()
