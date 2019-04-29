so ~/.config/bg.vim								" crontab changes content of bg.vim to 'set background=dark/light'

set termguicolors

" colo two-firewatch

" let g:airline_theme='twofirewatch'
let g:airline_theme='ayu'
let ayucolor="dark"   " for dark version of theme

colo ayu

" Finally comments in italic. NEVER CHANGE THOSE LINES EVER AGAIN.
" rip.
let g:two_firewatch_italics=1
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"
highlight Comment cterm=italic


call togglebg#map("<F5>")

