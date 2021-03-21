noremap ww :w<CR>
syntax on
set nu
set mouse=a
set ruler
set incsearch
set smartcase
set smartindent
set noswapfile
set tabstop=8 expandtab shiftwidth=4 softtabstop=4
set undodir=~/.vim/undodir
set undofile
set backspace=indent,eol,start
set modeline
filetype indent on


"Plugins here
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

"youComplitme
Plug 'Valloric/YouCompleteMe'

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" Grubox plugin here
Plug 'morhetz/gruvbox'


plug 'turbio/bracey.vim', {'do'}: 'npm install --prefix server'}
"Pairs
Plug 'chun-yang/auto-pairs'

"this gives python-mode 
plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
" Initialize plugin system
call plug#end()



 colorscheme gruvbox
 set background=dark


 "NERDTree Settings
 
function! AutoOpenNERDTree()
	if has('gui_running') && argc() == 0
		:NERDTree
	endif
endfunction

function! AutoFocusAwayFromNERDTree()
	if has('gui_running') && argc() == 0
		:wincmd l
	endif
endfunction

autocmd GUIEnter * call AutoOpenNERDTree()
autocmd VimEnter * call AutoFocusAwayFromNERDTree()
