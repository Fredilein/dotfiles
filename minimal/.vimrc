"
" --------------------------------
" minimal .vimrc for use in VMs...
" --------------------------------
"
" === INIT ===
"
call plug#begin('~/.config/nvim/plugged')

" File Navigation
Plug 'scrooloose/nerdtree'

" Functional
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'mbbill/undotree'

" Commands
Plug 'christoomey/vim-tmux-navigator'
Plug 'machakann/vim-sandwich'
Plug 'easymotion/vim-easymotion'

" Code Completion
Plug 'honza/vim-snippets'
Plug 'Shougo/denite.nvim'
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}

" Optical
Plug 'itchyny/lightline.vim'
Plug 'junegunn/goyo.vim'

" Themes
Plug 'challenger-deep-theme/vim', { 'name': 'challenger-deep' }

" Languages
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'mattn/emmet-vim'
Plug 'rust-lang/rust.vim'
Plug 'shime/vim-livedown'
Plug 'plasticboy/vim-markdown'
Plug 'posva/vim-vue'
Plug 'wavded/vim-stylus'
Plug 'previm/previm'

call plug#end()

"
" === GENERAL===
"
syntax enable
set number
set encoding=UTF-8
set mouse=a
set foldcolumn=1			    
set backspace=indent,eol,start
set so=5
set autoread				    
set nobackup
set nowritebackup
set cmdheight=1
set noshowcmd
set expandtab
set softtabstop=2
set shiftwidth=2

if has('nvim')
  set inccommand=split
endif

"
" === THEME ===
"
if has('nvim') || has('termguicolors')
  set termguicolors
endif

colorscheme challenger_deep

"
" === KEYS ===
"
let mapleader = ","

map <leader>b :buffers<CR>
nmap <silent> [b :bprevious<CR>
nmap <silent> ]b :bnext<CR>
nmap <silent> [B :bfirst<CR>
nmap <silent> ]B :blast<CR>

nnoremap <silent> <Tab> :bnext<cr>
nnoremap <silent> <S-Tab> :bprevious<cr>

map <leader>t :tabs<CR>
nmap <silent> [t :tabp<CR>
nmap <silent> ]t :tabn<CR>

map <leader>c :copen<CR>
nmap <silent> [c :cprev<CR>
nmap <silent> ]c :cnext<CR>
nmap <silent> [C :cfirst<CR>
nmap <silent> ]C :clast<CR>

nnoremap k gk
nnoremap gk k
nnoremap j gj
nnoremap gj j

inoremap {<CR> {<CR>}<ESC>O

map <leader>s :source ~/.config/nvim/init.vim<CR>
map <leader>m :make build<CR>
map <leader>w :w<CR>
map <silent> <leader>h :nohl<CR>


" --- NERDTree ---

map <C-n> :NERDTreeToggle<CR>

" --- vim-easy-align ---

xmap ga <Plug>(EasyAlign)

nmap ga <Plug>(EasyAlign)

" --- livedown ---

map <leader>l :LivedownToggle<CR>

" --- easymotion ---

nmap t <Plug>(easymotion-overwin-f)

map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

nmap T <Plug>(easymotion-overwin-f2)

map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" --- Denite ---

nmap ' :Denite buffer -split=floating<CR>
nmap <leader>f :Denite file/rec -split=floating<CR>
nnoremap <leader>g :<C-u>Denite grep:. -no-empty -mode=normal<CR>


" --- Coc ---

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

inoremap <silent><expr> <c-space> coc#refresh()

inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

vmap <leader>p  <Plug>(coc-format-selected)
nmap <leader>p  <Plug>(coc-format-selected)

nmap <leader>rn <Plug>(coc-rename)

vmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

nmap <leader>ac  <Plug>(coc-codeaction)
nmap <leader>qf  <Plug>(coc-fix-current)

" --- undotree ---

nnoremap <leader>u :UndotreeToggle<cr>


"
" === PLUGINS ===
"
filetype plugin indent on

" --- emmet ---

let g:user_emmet_leader_key=','
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}

" --- easymotion ---

let g:EasyMotion_do_mapping = 0 " Disable default mappings

let g:EasyMotion_smartcase = 1


" --- Denite --- "

call denite#custom#var('file/rec', 'command', ['rg', '--files', '--hidden', '--glob', '!.git'])

call denite#custom#var('grep', 'command', ['rg'])

call denite#custom#var('grep', 'default_opts', ['--hidden', '--vimgrep', '--heading', '-S'])

call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])

call denite#custom#var('buffer', 'date_format', '')

let s:denite_options = {'default' : {
\ 'auto_resize': 1,
\ 'prompt': '❯',
\ 'direction': 'rightbelow',
\ 'winminheight': '10',
\ 'highlight_mode_insert': 'Visual',
\ 'highlight_mode_normal': 'Visual',
\ 'prompt_highlight': 'Function',
\ 'highlight_matched_char': 'Function',
\ 'highlight_matched_range': 'Normal'
\ }}

function! s:profile(opts) abort
  for l:fname in keys(a:opts)
    for l:dopt in keys(a:opts[l:fname])
      call denite#custom#option(l:fname, l:dopt, a:opts[l:fname][l:dopt])
    endfor
  endfor
endfunction

try
call s:profile(s:denite_options)
catch
  echo 'Denite not installed. It should work after running :PlugInstall'
endtry

call denite#custom#map('insert', '<C-v>', '<denite:do_action:vsplit>',
      \'noremap')
call denite#custom#map('normal', '<C-v>', '<denite:do_action:vsplit>',
  \'noremap')
call denite#custom#map('insert', '<C-s>', '<denite:do_action:split>',
      \'noremap')
call denite#custom#map('normal', '<C-s>', '<denite:do_action:split>',
  \'noremap')
call denite#custom#map('insert', '<C-t>', '<denite:do_action:tabopen>',
      \'noremap')
call denite#custom#map('normal', '<C-t>', '<denite:do_action:tabopen>',
  \'noremap')

call denite#custom#map(
      \ 'insert',
      \ '<C-j>',
      \ '<denite:move_to_next_line>',
      \ 'noremap'
      \)
call denite#custom#map(
      \ 'insert',
      \ '<C-k>',
      \ '<denite:move_to_previous_line>',
      \ 'noremap'
      \)

" --- Coc --- 

set shortmess+=c

set signcolumn=yes

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

let g:coc_snippet_next = '<tab>'

autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

augroup mygroup
  autocmd!
  autocmd FileType typescripon setl formatexpr=CocAction('formatSelected')
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end


" --- previm ---

let g:previm_open_cmd = 'open -a Safari'


" 
" === STATUSLINE ===
"
function! FileNameWithIcon() abort
  return winwidth(0) > 70  ? " " . WebDevIconsGetFileTypeSymbol() . ' ' . expand('%:t') : '' 
endfunction

function! FileNameWithParent(f) abort
  if expand('%:t') ==# ''
    return expand('%:p:h:t')
  else
    return expand('%:p:h:t') . "/" . expand("%:t")
  endif
endfunction

function! Line_num() abort
  return string(line('.'))
endfunction

function! Active_tab_num(n) abort
    return " " . a:n . " \ue0bb"
endfunction

function! Inactive_tab_num(n) abort
  return " " . a:n . " \ue0bb "
endfunction

function! Line_percent() abort
  return string((100*line('.'))/line('$'))
endfunction

function! Col_num() abort
    return string(getcurpos()[2])
endfunction

function! Git_branch() abort
  if fugitive#head() !=# ''
    return fugitive#head() .  " " . "\ue702"
  else
    return "\uf468"
  endif
endfunction

function! StatusDiagnostic() abort
  let info = get(b:, 'coc_diagnostic_info', {})

  if get(info, 'error', 0)
    return "\uf46f"
  endif

  if get(info, 'warning', 0)
    return info['warning'] . "\uf421"
  endif

  return "\uf42e" 
endfunction

let g:lightline = {}
let g:lightline.colorscheme = 'challenger_deep'
let g:lightline.active = { 
      \ 'left': [ ['mode', 'readonly'], ['filename_with_icon', 'modified' ] ],
      \ 'right': [ ['lineinfo'], ['testing_status', 'status_diagnostic'] ]
      \ }
let g:lightline.separator = { 'left': "\ue0b8", 'right': "\ue0be " }
let g:lightline.subseparator = { 'left': "\ue0b9", 'right': "\ue0b9" }
let g:lightline.tabline_separator = { 'left': "\ue0bc", 'right': "\ue0ba " }
let g:lightline.tabline_subseparator = { 'left': "\ue0bb", 'right': "\ue0bb" }
let g:lightline#gitdiff#indicator_added = "\uf055 "
let g:lightline#gitdiff#indicator_deleted = "\uf057 "
let g:lightline#gitdiff#indicator_modified = "\uf056 "

let g:lightline.tabline = {
            \ 'left': [ [ 'vim_logo', 'tabs' ] ],
            \ 'right': [ [ 'git_branch' ], [ 'gitdiff' ]]
            \ }
let g:lightline.tab = {
        \ 'active': ['artify_activetabnum', 'filename_with_parent'],
        \ 'inactive': ['artify_inactivetabnum', 'filename']
        \ }

let g:lightline.tab_component = {}
let g:lightline.tab_component_function = {
            \ 'artify_activetabnum': 'Active_tab_num',
            \ 'artify_inactivetabnum': 'Inactive_tab_num',
            \ 'artify_filename': 'lightline_tab_filename',
            \ 'filename': 'lightline#tab#filename',
            \ 'modified': 'lightline#tab#modified',
            \ 'readonly': 'lightline#tab#readonly',
            \ 'tabnum': 'lightline#tab#tabnum',
            \ 'filename_with_parent': 'FileNameWithParent'
            \ }

let g:lightline.component = {
        \ 'filename_with_icon': '%{FileNameWithIcon()}',
        \ 'lineinfo': "%2{Line_percent()}\uf295 %3{Line_num()}:%-2{Col_num()}",
        \ 'vim_logo': "\ue7c5",
        \ 'git_branch': '%{Git_branch()}',
        \ 'filename_with_parent': '%t',
        \ 'status_diagnostic': '%{StatusDiagnostic()}'
        \ }

let g:lightline.component_expand = { 'gitdiff': 'lightline#gitdiff#get' }

let g:lightline.component_function = {
\ }
