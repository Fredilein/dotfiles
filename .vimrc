"
"############################################################
"#                        _									#
"#             __ __     (_)     _ __       _ _     __		#
"#      _      \ V /     | |    | '  \     | '_|   / _|		#
"#    _(_)_    _\_/_    _|_|_   |_|_|_|   _|_|_    \__|_	#
"#   |=====|__|=====|__|=====|__|=====|__|=====|__|=====|	#
"#   `-0-0-'  `-0-0-'  `-0-0-'  `-0-0-'  `-0-0-'  `-0-0-'	#
"#``````````````````````````````````````````````````````````#
"#  												~ Adi	#
"############################################################ 
"


:filetype plugin on
runtime macros/matchit.vim



"
" ===== Plug =====
" 

call plug#begin('~/.vim/plugged')

" File Navigation
Plug 'scrooloose/nerdtree'
Plug '/usr/local/opt/fzf'						" brew installation
Plug 'junegunn/fzf.vim'

" tpope
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
" Plug 'tpope/vim-surround'

" Commands
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'godlygeek/tabular'
Plug 'junegunn/vim-easy-align'
Plug 'christoomey/vim-tmux-navigator'
Plug 'machakann/vim-sandwich'
Plug 'easymotion/vim-easymotion'

" Code Completion
Plug 'valloric/youcompleteme'
Plug 'SirVer/ultisnips'
Plug 'ervandew/supertab'
Plug 'honza/vim-snippets'

" Optical
Plug 'edkolev/tmuxline.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/goyo.vim'

" Themes
Plug 'noah/vim256-color'
Plug 'cocopon/iceberg.vim'
Plug 'nightsense/carbonized'
Plug 'rakr/vim-two-firewatch'
Plug 'rakr/vim-togglebg'
Plug 'sonph/onehalf', {'rtp': 'vim/'}

" Languages
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'mattn/emmet-vim'
Plug 'rust-lang/rust.vim'
Plug 'shime/vim-livedown'
Plug 'plasticboy/vim-markdown'

call plug#end()


"
" ===== General =====
"

syntax enable

set encoding=UTF-8

set mouse=a

set hidden										" can navigate away from file

set sw=4 ts=4 sts=4                             " Defaults: four spaces per tab 
autocmd FileType js :setlocal sw=2 ts=2 sts=2	" Two spaces for js files 

set backspace=indent,eol,start

set so=5										" 5 lines on top/bottom

set autoread									" Set to auto read when a file is changed from the outside

set foldcolumn=1								" a little margin on the left




"
" ===== Theme =====
"

so ~/.config/bg.vim								" crontab changes content of bg.vim to 'set background=dark/light'

colo two-firewatch
let g:airline_theme='twofirewatch'

" Finally comments in italic. NEVER CHANGE THOSE LINES EVER AGAIN.
let g:two_firewatch_italics=1
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"
highlight Comment cterm=italic


call togglebg#map("<F5>")

set termguicolors


"
" ===== Line Numbers =====
"

set number

" ~ Set relative line numbers when in INSERT mode
" :augroup numbertoggle
" :  autocmd!
" :  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
" :  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
" :augroup END


"
" ===== Key remapping =====
"

" leader key
let mapleader = ","

" switch buffers
map <leader>b :buffers<CR>
nmap <silent> [b :bprevious<CR>
nmap <silent> ]b :bnext<CR>
nmap <silent> [B :bfirst<CR>
nmap <silent> ]B :blast<CR>

" quickfix list
map <leader>c :copen<CR>
nmap <silent> [c :cprev<CR>
nmap <silent> ]c :cnext<CR>
nmap <silent> [C :cfirst<CR>
nmap <silent> ]C :clast<CR>

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

" closing brackets
inoremap {<CR> {<CR>}<ESC>O

" others
map <leader>s :source ~/.vimrc<CR>
map <leader>m :make build<CR>



"
" ===== Plugins =====
"

" let g:completor_racer_binary = '/Users/adi/.cargo/bin/racer'

" --- ycm ---

let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'

map <leader>g :YcmCompleter GoTo<CR>

let g:ycm_rust_src_path = '/usr/local/rust/rustc-1.33.0-src/src'

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" --- NERDTree ---

map <C-n> :NERDTreeToggle<CR>

" --- vim-airline ---

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" --- vim-easy-align ---

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" --- fzf ---

map <leader>f :Files<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" --- emmet ---

let g:user_emmet_leader_key=','
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}

" --- livedown ---

map <leader>l :LivedownToggle<CR>

" --- easymotion ---

let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap t <Plug>(easymotion-overwin-f)
" or

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)


" s{char}{char} to move to {char}{char}
nmap T <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)
