syntax on
set number
set nocompatible
set encoding=utf-8
filetype plugin indent on

" set up syntastic for C#
"let g:syntastic_cs_checkers = ['code-checker']

call plug#begin('~/.vim/plugged')

" configuring nerdtree
Plug 'scrooloose/nerdtree'

" hide unwanted files
let NERDTreeIgnore = ['__pycache__', '.pyc$', '\.swp', 'node_modules/']

" show hidden files
let NERDTreeShowHidden=1

" autostart nerdtree when vim starts with no file argument
autocmd	StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif 

" Exit vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Focus nerdtree using 
nnoremap <leader>n :NERDTreeFocus<CR>
" Open nerdtree using Ctrl-n
nnoremap <C-n> :NERDTree<CR>
" Toggle nerdtree using Ctrl-t
nnoremap <C-t> :NERDTreeToggle<CR> 
" Open nerdtree search using Ctrl-f 
nnoremap <C-f> :NERDTreeFind<CR>

" Configuring YouCompleteMe
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --cs-completer --ts-completer --rust-completer' }

" compatibliity with ultisnips
let g:ycm_key_list_select_completion = [ '<C-n>', '<Down>' ]
let g:ycm_key_list_previous_completion = [ '<C-p>', 'Up' ]
let g:SuperTabDefualtCompletionType = '<C-n>'
" disable preview window
set completeopt-=preview
" navigating to the definition of a symbol
map <leader>g	:YcmCompleter GoToDefinitionElseDeclaration<CR>

" Configuring JavaScipt syntax
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

" Configuring CtrlP
Plug 'ctrlpvim/ctrlp.vim'

" Configuring UltiSnips
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<tab>"

" Git integration
" git commands within vim
Plug 'tpope/vim-fugitive'
" git changes on the gutter
Plug 'airblade/vim-gitgutter'
" nerdtree git changes
Plug 'Xuyuanp/nerdtree-git-plugin'

" TODO Color scheme
set background=dark

" Configuring Autopairs
" closing XML tags
Plug 'alvan/vim-closetag'
" files on which to activare tags auto-closing
let g:closetag_filenames = '*.html,*xhtml,*.xml,*.js,*.jsx,*.ts,*.tsx'
" Closing braces and brackets
Plug 'jiangmiao/auto-pairs'

" TMux - Vim integration
Plug 'christoomey/vim-tmux-navigator'

" Syntax checking`
"Plugin 'vim-syntastic/syntastic'

" Omnisharp stuff
Plug 'Omnisharp/omnisharp-vim'
Plug 'tpope/vim-dispatch'


call plug#end()

filetype plugin indent on    " required
