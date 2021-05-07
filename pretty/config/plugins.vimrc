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

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1



" --- Coc --- 

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

let g:coc_snippet_next = '<tab>'

autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescripon setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end


" --- previm ---

let g:previm_open_cmd = 'open -a Safari'


" --- vim-table-mode ---

let g:table_mode_corner='|'


" --- vim-wiki ---
let g:vimwiki_list = [{'path': '~/Documents/Sec/Notes',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

" --- vim-fzf ---
function! s:fzf_statusline()
  " Override statusline as you like
  " Doesn't really work tho lol
  highlight fzf1 ctermfg=black ctermbg=cyan
  setlocal statusline=%#fzf1#\ \ \ FUZZY 
endfunction

autocmd! User FzfStatusLine call <SID>fzf_statusline()

let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'LineNr'],
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

let $FZF_DEFAULT_OPTS='--layout=reverse'
let g:fzf_layout = { 'window': 'call FloatingFZF()' }

function! FloatingFZF()
  let buf = nvim_create_buf(v:false, v:true)
  call setbufvar(buf, '&signcolumn', 'no')

  let height = float2nr(&lines / 2)
  " let width = float2nr(&columns - (&columns * 2 / 10))
  let width = min([&columns - 4, 100])
  let col = float2nr((&columns - width) / 2)

  let opts = {
        \ 'relative': 'editor',
        \ 'row': float2nr(&lines / 4),
        \ 'col': col,
        \ 'width': width,
        \ 'height': height
        \ }

  call nvim_open_win(buf, v:true, opts)
endfunction

" --- vim-markdown ---
let g:vim_markdown_math = 1
set conceallevel=2
let g:vim_markdown_new_list_item_indent = 0
