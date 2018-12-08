"
" VIMRC
"
" Specify a directory for plugins
" - ~/.vim/plugged/

:filetype plugin on


"
" ===== Plug =====
" 
call plug#begin('~/.vim/plugged')

" Functional
Plug 'scrooloose/nerdtree'
Plug 'valloric/youcompleteme'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
Plug 'tpope/vim-fugitive'

" Commands
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'

" Optical
Plug 'edkolev/tmuxline.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Themes
Plug 'noah/vim256-color'
Plug 'cocopon/iceberg.vim'
Plug 'nightsense/carbonized'

" Unused
" Plug 'itchyny/lightline.vim'

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

:set shiftwidth=2 softtabstop=2 expandtab


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
let mapleader = ","
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

" -- fzf --
" map ; :Files<CR>
map <leader>f :Files<CR>
