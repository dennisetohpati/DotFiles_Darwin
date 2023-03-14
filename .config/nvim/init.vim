" Set automatic relative numbering
:set rnu
:syntax on

" List Plugins
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
Plug 'davidhalter/jedi-vim'
Plug 'sainnhe/sonokai' 
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jmcantrell/vim-virtualenv'
Plug 'frazrepo/vim-rainbow'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
call plug#end()


"let g:jedi#environment_path = "/Users/dennisezefanyatohpati/.pyenv/shims/python"
let g:jedi#use_splits_not_buffers = "left"


" Configure Plugins
:set background=dark
colorscheme sonokai 

let g:rainbow_active = 1

let g:bargreybars_auto=0
let g:airline_solorized_bg='dark'
let g:airline_powerline_fonts=1
let g:airline#extension#tabline#enable=1
let g:airline#extension#tabline#left_sep=' '
let g:airline#extension#tabline#left_alt_sep='|'
let g:airline#extension#tabline#formatter='unique_tail'

let NERDTreeQuitOnOpen=0
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

autocmd FileType python map <buffer> <F5> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F5> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
 

let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1
