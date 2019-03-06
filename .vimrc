call plug#begin('~/.vim/plugged')

" Obligatory nerdtree
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Install plugins for rust development
Plug 'rust-lang/rust.vim'
Plug 'vim-syntastic/syntastic'
Plug 'racer-rust/vim-racer'

call plug#end()

" Map ctrl-n to open nerdtree
map <C-n> :NERDTreeToggle<CR>

syntax enable
colorscheme monokai
