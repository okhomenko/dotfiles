syntax on
set hidden

set number
set softtabstop=2
set shiftwidth=2
set wildmode=list:longest

map <Leader>t :FuzzyFinderTextMate<Enter>
set tabstop=2

filetype plugin indent on
let mapleader=","
	map <leader>m :wa \|! jasmine-node --coffee test/*_spec.coffee <CR>
	map <leader>vm :wa \|! jasmine-node --coffee --verbose test/*_spec.coffee <CR>

