"
" VIMRC
"
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'

:filetype plugin on

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
" Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'

" Initialize plugin system



" Functional
Plug 'scrooloose/nerdtree'
Plug 'valloric/youcompleteme'

" Commands
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-commentary'

" Optical
" Plug 'itchyny/lightline.vim'
Plug 'edkolev/tmuxline.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Themes
Plug 'noah/vim256-color'
Plug 'cocopon/iceberg.vim'
Plug 'nightsense/carbonized'

call plug#end()



"
" ===== General =====
"
syntax enable
" set number

colorscheme iceberg



:set number relativenumber

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END


set mouse=a
:set hidden     "can navigate away from file

" set background=dark
" hi Visual guibg=#DDDDDD guifg=Black

:set shiftwidth=4 softtabstop=4 expandtab


"
" ===== Key remapping =====
"
" nnoremap , :
inoremap jk <Esc>

" switch windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" move between display lines
nnoremap k gk
nnoremap gk k
nnoremap j gj
nnoremap gj j


"
" ===== Plugins =====
"
" --- NERDTree ---
" let mapleader = ","
" map <leader>ne :NERDTreeToggle<CR>
map <C-n> :NERDTreeToggle<CR>

" --- vim-airline ---
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='luna'

" --- vim-lightline ---
set laststatus=2
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

" --- vim-easy-align ---
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
