set rtp+=~/.fzf

if empty(glob('~/.vim/autoload/plug.vim'))
	  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	    autocmd VimEnter * PlugInstall
endif

set modelines=0

set number " line numbers
set ruler
set encoding=utf-8 " Encoding to UTF-8

call plug#begin ('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline-themes'
Plug 'kchmck/vim-coffee-script'
Plug 'vim-airline/vim-airline'

call plug#end()

" ===================================
" Mappings
" ===================================

" a little more informative version of the above
nmap <leader>l :call <SID>SynStack()<CR>
" toggle NERDTree
map <leader>n :NERDTreeToggle<cr>
 " redraw screen
map <leader>r :redraw!<cr>
" map :Q->:q :W->:w
map :Q :q<cr>
map :W :w<cr>
map Q <Nop>

map <leader>b :Buffers<cr>
map <leader>f :Files<cr>

" switch between the current and previous buffer
nnoremap <leader><leader> <c-^>

" ====================================
" Search
" ===================================

set ignorecase " search in documents is case insensitive, unless.....
set smartcase  " ...the search contains a capital letter
set incsearch  " jump to search results as soon as something matches incrementally
set hlsearch  " highlight search matches
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR> " spacebar in normal mode clears search highlighting

function! <SID>SynStack()
       	if !exists("*synstack")
	      return
 	endif
	 echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
 endfunc


" ===================================
" Colors and Style
" ==================================

:hi Search guibg=Yellow
:set laststatus=2
set ambiwidth=double
let g:airline_theme='solarized'

syntax enable
set background=dark
colorscheme solarized
let g:solarized_visibility="high"

let g:airline_section_b = '%{strftime("%c")}'
let g:airline_section_y = 'BN: %{bufnr("%")}'
