call plug#begin('~/.config/nvim/plugged')

" File Navigation
Plug 'scrooloose/nerdtree'

" Tools
Plug 'tpope/vim-commentary'

" Commands
Plug 'machakann/vim-sandwich'
Plug 'easymotion/vim-easymotion'


call plug#end()

syntax enable

set number

set encoding=UTF-8

set mouse=a

set foldcolumn=1			    

" can navigate away from file
set hidden										
" make backspace work as expected
set backspace=indent,eol,start

" lines on top/bottom
set so=4

" do not wrap long lines by default
" set nowrap

" Set to auto read when a file is changed from the outside
set autoread				    

" Some Coc servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=1

" Don't show last command
set noshowcmd

" Yank and paste with the system clipboard
" set clipboard=unnamed

" === TAB/Space settings === "
" Insert spaces when TAB is pressed.
set expandtab

" Change number of spaces that a <Tab> counts for during editing ops
set softtabstop=2

" Indentation amount for < and > commands.
set shiftwidth=2

set noswapfile

if has('nvim')
  set inccommand=split
endif


" Language specific settings
autocmd Filetype py setlocal expandtab shiftwidth=4 softtabstop=4
filetype plugin indent on

" --- easymotion ---

let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1

let mapleader = ","

" switch buffers
map <leader>b :buffers<CR>
nmap <silent> [b :bprevious<CR>
nmap <silent> ]b :bnext<CR>
nmap <silent> [B :bfirst<CR>
nmap <silent> ]B :blast<CR>

"Tab to switch to next open buffer
nnoremap <silent> <Tab> :bnext<cr>
"Shift + Tab to switch to previous open buffer
nnoremap <silent> <S-Tab> :bprevious<cr>


"switch tabs
map <leader>t :tabs<CR>
nmap <silent> [t :tabp<CR>
nmap <silent> ]t :tabn<CR>

" quickfix list
map <leader>c :copen<CR>
nmap <silent> [c :cprev<CR>
nmap <silent> ]c :cnext<CR>
nmap <silent> [C :cfirst<CR>
nmap <silent> ]C :clast<CR>

" " switch windows
" map <C-h> <C-w>h
" map <C-j> <C-w>j
" map <C-k> <C-w>k
" map <C-l> <C-w>l

" move between display lines
nnoremap k gk
nnoremap gk k
nnoremap j gj
nnoremap gj j

" closing brackets
inoremap {<CR> {<CR>}<ESC>O

" others
" map <leader>s :source ~/.vimrc<CR>
map <leader>s :source ~/.config/nvim/init.vim<CR>
map <leader>m :make build<CR>
map <silent> <leader>h :nohl<CR>


"
" === Plugins ===
"

" --- NERDTree ---

map <C-n> :NERDTreeToggle<CR>


" --- easymotion ---
" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap t <Plug>(easymotion-overwin-f)

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" s{char}{char} to move to {char}{char}
nmap T <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
" map  <Leader>w <Plug>(easymotion-bd-w)
" nmap <Leader>w <Plug>(easymotion-overwin-w)
