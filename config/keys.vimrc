" leader key
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


" --- vim-easy-align ---

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


" --- livedown ---

map <leader>l :LivedownToggle<CR>


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


" --- Denite ---

"   ;         - Browser currently open buffers
"   <leader>t - Browse list of files in current directory
"   <leader>g - Search current directory for occurences of given term and
"   close window if no results
"   <leader>j - Search current directory for occurences of word under cursor
" nmap ' :Denite buffer -split=floating<CR>
" nmap <leader>f :Denite file/rec -split=floating<CR>
" nnoremap <leader>g :<C-u>Denite grep:. -no-empty -mode=normal<CR>
" ==> Floating windows coming with nvim 0.4!


" --- Coc ---

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

" use <c-space>for trigger completion
inoremap <silent><expr> <c-space> coc#refresh()

inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

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

" Format
" vmap <leader>p  <Plug>(coc-format-selected)
" nmap <leader>p  <Plug>(coc-format-selected)

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
vmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)


" --- undotree ---

nnoremap <leader>u :UndotreeToggle<cr>


" --- vim-table-mode ---
nnoremap <leader>tm :TableModeToggle<CR>


" --- vim-fzf ---
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }
nmap ' :Buffers<CR>
nmap <leader>f :Files<CR>
nmap <leader>g :Rg<CR>
nmap <leader>w :Windows<CR>
nmap <leader>i :Commits<CR>


" --- vim-prettier ---

