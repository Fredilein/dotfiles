"
" VIMRC
"
" Specify a directory for plugins
" - ~/.vim/plugged/

:filetype plugin on
runtime macros/matchit.vim


"
" ===== Plug =====
" 
call plug#begin('~/.vim/plugged')


" File Navigation
Plug 'scrooloose/nerdtree'
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" tpope
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'

" Commands
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'godlygeek/tabular'
Plug 'junegunn/vim-easy-align'
Plug 'christoomey/vim-tmux-navigator'

" Code Completion
Plug 'valloric/youcompleteme'
Plug 'SirVer/ultisnips'
Plug 'ervandew/supertab'
Plug 'honza/vim-snippets'

" Optical
Plug 'edkolev/tmuxline.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'edkolev/promptline.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/goyo.vim'

" Themes
Plug 'noah/vim256-color'
Plug 'cocopon/iceberg.vim'
Plug 'nightsense/carbonized'
Plug 'rakr/vim-two-firewatch'
Plug 'sonph/onehalf', {'rtp': 'vim/'}

" Languages
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'mattn/emmet-vim'
Plug 'rust-lang/rust.vim'
Plug 'shime/vim-livedown'
Plug 'plasticboy/vim-markdown'


" Unused
" Plug 'maralla/completor.vim'
" Plug 'ajh17/VimCompletesMe'
" Plug 'itchyny/lightline.vim'
" if has('nvim')
"     Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" else
"   Plug 'Shougo/deoplete.nvim'
"   Plug 'roxma/nvim-yarp'
"   Plug 'roxma/vim-hug-neovim-rpc'
" endif

call plug#end()




"
" ===== General =====
"

syntax enable

set encoding=UTF-8

set mouse=a
:set hidden     "can navigate away from file

" :set shiftwidth=2 softtabstop=2 expandtab
set sw=4 ts=4 sts=4                             " Defaults: four spaces per tab "
autocmd FileType js :setlocal sw=2 ts=2 sts=2	" Two spaces for js files "

set backspace=indent,eol,start

" set fillchars=vert:│    " that's a vertical box-drawing character


"
" ===== Theme =====
"
" set background=light " or light if you prefer the light version
" colo iceberg

" set background=dark
colo two-firewatch
let g:airline_theme='twofirewatch'

set termguicolors

so ~/.config/bg.vim		" crontab changes content of bg.vim to 'set bg=dark/light'



"
" ===== Line Numbers =====
"
:set number

" :augroup numbertoggle
" :  autocmd!
" :  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
" :  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
" :augroup END


"
" ===== Key remapping =====
"
" nnoremap , :
" inoremap jk <Esc>


" leader key
let mapleader = ","


" switch buffers
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

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

" buffers
map <leader>b :buffers<CR>

" closing brackets
inoremap {<CR> {<CR>}<ESC>O


" others
map <leader>O O<ESC>

map <leader>s :source ~/.vimrc<CR>



"
" ===== Plugins =====
"
"
" == Completion ==
"
let g:completor_racer_binary = '/Users/adi/.cargo/bin/racer'

" --- ycm ---
"
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
" map <leader>ne :NERDTreeToggle<CR>
map <C-n> :NERDTreeToggle<CR>

" " --- promptline.vim ---
" " \'a'    : [ '$(whoami)' ],
" let g:promptline_preset = {
"       \'a'    : [ '$(whoami) | $vim_mode' ],
"       \'b'    : [ promptline#slices#cwd() ],
"       \'c'    : [ promptline#slices#git_status() ],
"       \'x'    : [ promptline#slices#vcs_branch() ],
"       \'y'    : [ '$vim_mode' ],
"       \'z'    : [ promptline#slices#conda_env() ],
"       \'options': {
"           \'left_sections' : [ 'a', 'z', 'c' ],
"           \'right_sections' : [ 'x', 'b' ],
"           \'left_only_sections' : [ 'b', 'a', 'c' ]}}

" --- vim-airline ---
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" --- vim-lightline ---
" set laststatus=2
" set noshowmode
" let g:lightline = {
"       \ 'colorscheme': 'wombat',
"       \ }



" --- vim-easy-align ---
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" -- fzf --
" map ; :Files<CR>
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
"
let g:user_emmet_leader_key=','
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}

" --- livedown ---
map <leader>l :LivedownToggle<CR>
