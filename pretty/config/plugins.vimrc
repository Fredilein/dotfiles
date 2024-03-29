"
" ===== plugins.vimrc =====
"
" Plugin specific settings go here
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

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1


" --- Coc --- 

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescripon setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

command! -nargs=0 Prettier :CocCommand prettier.formatFile


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
