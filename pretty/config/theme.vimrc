"
" ===== theme.vimrc =====
"
" Theme related settings go here
"

if has('nvim') || has('termguicolors')
  set termguicolors
endif

colorscheme challenger_deep

" let g:lightline.colorscheme = 'challenger_deep'
" hi PMenu guibg=#100e23
" hi Search guibg=#ffb378 guifg=black
" hi LineNr guibg=#1e1c31
" Fix challengers horrible git diffs
" hi DiffAdd guibg=#62d196 guifg=black
" hi DiffDelete guibg=#ff5458 guifg=black
" hi DiffChange guibg=#ffb378 guifg=black
" hi DiffText guibg=#ffe9aa guifg=black
hi Folded guibg=#100E23 guifg=grey

" --> ayu
" let g:airline_theme='ayu'
" let ayucolor="dark"   " for dark version of theme
" colo ayu
" colo  challenger_deep

" " Finally comments in italic. NEVER CHANGE THOSE LINES EVER AGAIN.
" " rip.
" " let g:two_firewatch_italics=1
" let &t_ZH="\e[3m"
" let &t_ZR="\e[23m"
" highlight Comment cterm=italic
