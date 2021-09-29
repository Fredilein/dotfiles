"
" ===== keys.vimrc =====
"
" All key mappings, default and plugin-specific
"

"
" === Default ===
"


" leader key
let mapleader = ","

" switch buffers
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


" --- easymotion ---

nmap t <Plug>(easymotion-overwin-f)

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" Move to word
map T <Plug>(easymotion-bd-w)
nmap T <Plug>(easymotion-overwin-w)


" --- Coc ---

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : 
                                            \"\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-rename)

nmap <leader>p :CocCommand prettier.formatFile<CR>

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction


" --- undotree ---

nnoremap <leader>u :UndotreeToggle<cr>


" --- vim-fzf ---
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }
nmap ' :Buffers<CR>
nmap <leader>f :GFiles<CR>
nmap <leader>/ :Rg<CR>
nmap <leader>w :Windows<CR>
nmap <leader>i :Commits<CR>
nmap <leader>b :Buffers<CR>


" --- Vista.vim ---
nmap <leader>v :Vista coc<CR>

" --- vim-fugitive ---
nmap <leader>gg :Git<CR>
nmap <leader>gp :Git push<CR>
nmap <leader>gl :Git pull<CR>
nmap <leader>ge :Gedit<CR>
nmap <leader>gs :Gdiffsplit<CR>
nmap <leader>gd :Git difftool<CR>
nmap <leader>glg :Glog<CR>
nmap <leader>ga :Gwrite<CR>
nmap <leader>gc :Git commit<CR>
