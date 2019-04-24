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
" Plug 'valloric/youcompleteme'
" Plug 'SirVer/ultisnips'
" Plug 'ervandew/supertab'
Plug 'honza/vim-snippets'
Plug 'Shougo/denite.nvim'
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}

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

" can navigate away from file
set hidden										

set backspace=indent,eol,start

" 5 lines on top/bottom
set so=5										

" Set to auto read when a file is changed from the outside
set autoread				    

" a little margin on the left
set foldcolumn=1			    

" Some Coc servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=1

" Don't show last command
set noshowcmd

" Yank and paste with the system clipboard
set clipboard=unnamed

" === TAB/Space settings === "
" Insert spaces when TAB is pressed.
set expandtab

" Change number of spaces that a <Tab> counts for during editing ops
set softtabstop=2

" Indentation amount for < and > commands.
set shiftwidth=2

" do not wrap long lines by default
set nowrap




"
" ===== Theme =====
"

so ~/.config/bg.vim								" crontab changes content of bg.vim to 'set background=dark/light'

colo two-firewatch
let g:airline_theme='twofirewatch'

" Finally comments in italic. NEVER CHANGE THOSE LINES EVER AGAIN.
" rip.
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



"
" ===== Plugins =====
"

" let g:completor_racer_binary = '/Users/adi/.cargo/bin/racer'

" --- ycm ---

" let g:ycm_server_keep_logfiles = 1
" let g:ycm_server_log_level = 'debug'

" map <leader>g :YcmCompleter GoTo<CR>

" let g:ycm_rust_src_path = '/usr/local/rust/rustc-1.33.0-src/src'

" " make YCM compatible with UltiSnips (using supertab)
" let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
" let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
" let g:SuperTabDefaultCompletionType = '<C-n>'

" " better key bindings for UltiSnipsExpandTrigger
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<tab>"
" let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

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

" map <leader>f :Files<CR>
" let g:fzf_action = {
"   \ 'ctrl-t': 'tab split',
"   \ 'ctrl-x': 'split',
"   \ 'ctrl-v': 'vsplit' }
" let g:fzf_colors =
" \ { 'fg':      ['fg', 'Normal'],
"   \ 'bg':      ['bg', 'Normal'],
"   \ 'hl':      ['fg', 'Comment'],
"   \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
"   \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
"   \ 'hl+':     ['fg', 'Statement'],
"   \ 'info':    ['fg', 'PreProc'],
"   \ 'border':  ['fg', 'Ignore'],
"   \ 'prompt':  ['fg', 'Conditional'],
"   \ 'pointer': ['fg', 'Exception'],
"   \ 'marker':  ['fg', 'Keyword'],
"   \ 'spinner': ['fg', 'Label'],
"   \ 'header':  ['fg', 'Comment'] }

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


" === Denite shorcuts === "
"   ;         - Browser currently open buffers
"   <leader>t - Browse list of files in current directory
"   <leader>g - Search current directory for occurences of given term and
"   close window if no results
"   <leader>j - Search current directory for occurences of word under cursor
nmap ' :Denite buffer -split=floating<CR>
nmap <leader>f :Denite file/rec -split=floating<CR>
nnoremap <leader>g :<C-u>Denite grep:. -no-empty -mode=normal<CR>


" === Coc === 

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

let g:coc_snippet_next = '<tab>'

" use <c-space>for trigger completion
inoremap <silent><expr> <c-space> coc#refresh()

inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif


" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction


" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

augroup mygroup
	autocmd!
	" Setup formatexpr specified filetype(s).
	autocmd FileType typescripon setl formatexpr=CocAction('formatSelected')
	" Update signature help on jump placeholder
	autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
vmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

