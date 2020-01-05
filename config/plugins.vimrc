filetype plugin indent on

" --- vim-airline ---

" let g:airline#extensions#tabline#enabled = 1
" let g:airline_powerline_fonts = 1

" if you want to disable auto detect, comment out those two lines
"let g:airline#extensions#disable_rtp_load = 1
"let g:airline_extensions = ['branch', 'hunks', 'coc']

" let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
" let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'


" --- lightline ---

" let g:lightline = { 'colorscheme': 'challenger_deep'}


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


"" --- Denite --- "

"" Use ripgrep for searching current directory for files
"" By default, ripgrep will respect rules in .gitignore
""   --files: Print each file that would be searched (but don't search)
""   --glob:  Include or exclues files for searching that match the given glob
""            (aka ignore .git files)
""
"call denite#custom#var('file/rec', 'command', ['rg', '--files', '--hidden', '--glob', '!.git'])

"" Use ripgrep in place of 'grep'
"call denite#custom#var('grep', 'command', ['rg'])

"" Custom options for ripgrep
""   --vimgrep:  Show results with every match on it's own line
""   --hidden:   Search hidden directories and files
""   --heading:  Show the file name above clusters of matches from each file
""   --S:        Search case insensitively if the pattern is all lowercase
"call denite#custom#var('grep', 'default_opts', ['--hidden', '--vimgrep', '--heading', '-S'])

"" Recommended defaults for ripgrep via Denite docs
"call denite#custom#var('grep', 'recursive_opts', [])
"call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
"call denite#custom#var('grep', 'separator', ['--'])
"call denite#custom#var('grep', 'final_opts', [])

"" Remove date from buffer list
"call denite#custom#var('buffer', 'date_format', '')

"" Custom options for Denite
""   auto_resize             - Auto resize the Denite window height automatically.
""   prompt                  - Customize denite prompt
""   direction               - Specify Denite window direction as directly below current pane
""   winminheight            - Specify min height for Denite window
""   highlight_mode_insert   - Specify h1-CursorLine in insert mode
""   prompt_highlight        - Specify color of prompt
""   highlight_matched_char  - Matched characters highlight
""   highlight_matched_range - matched range highlight

"let s:denite_options = {'default' : {
"\ 'auto_resize': 1,
"\ 'prompt': '❯',
"\ 'direction': 'rightbelow',
"\ 'winminheight': '10',
"\ 'highlight_mode_insert': 'Visual',
"\ 'highlight_mode_normal': 'Visual',
"\ 'prompt_highlight': 'Function',
"\ 'highlight_matched_char': 'Function',
"\ 'highlight_matched_range': 'Normal'
"\ }}

"" Loop through denite options and enable them
"function! s:profile(opts) abort
"  for l:fname in keys(a:opts)
"    for l:dopt in keys(a:opts[l:fname])
"      call denite#custom#option(l:fname, l:dopt, a:opts[l:fname][l:dopt])
"    endfor
"  endfor
"endfunction

"try
"call s:profile(s:denite_options)
"catch
"  echo 'Denite not installed. It should work after running :PlugInstall'
"endtry

"" https://github.com/sodiumjoe/dotfiles/blob/master/vimrc#L179
"call denite#custom#map('insert', '<C-v>', '<denite:do_action:vsplit>',
"      \'noremap')
"call denite#custom#map('normal', '<C-v>', '<denite:do_action:vsplit>',
"  \'noremap')
"call denite#custom#map('insert', '<C-s>', '<denite:do_action:split>',
"      \'noremap')
"call denite#custom#map('normal', '<C-s>', '<denite:do_action:split>',
"  \'noremap')
"call denite#custom#map('insert', '<C-t>', '<denite:do_action:tabopen>',
"      \'noremap')
"call denite#custom#map('normal', '<C-t>', '<denite:do_action:tabopen>',
"  \'noremap')

"call denite#custom#map(
"      \ 'insert',
"      \ '<C-j>',
"      \ '<denite:move_to_next_line>',
"      \ 'noremap'
"      \)
"call denite#custom#map(
"      \ 'insert',
"      \ '<C-k>',
"      \ '<denite:move_to_previous_line>',
"      \ 'noremap'
"      \)

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
