"
" ===== general.vimrc =====
"
" Some general (neo)vim settings
"

syntax enable

set number

set encoding=UTF-8

set mouse=a

set foldcolumn=1			    

" can navigate away from file
set hidden										

" make backspace work as expected
set backspace=indent,eol,start

" lines on top/bottom
set so=4

" do not wrap long lines by default
" set nowrap

" Set to auto read when a file is changed from the outside
set autoread				    

" Some Coc servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=1

" Don't show last command
set noshowcmd

" Yank and paste with the system clipboard
" set clipboard=unnamed

" === TAB/Space settings === "
" Insert spaces when TAB is pressed.
set expandtab

" Change number of spaces that a <Tab> counts for during editing ops
set softtabstop=2

" Indentation amount for < and > commands.
set shiftwidth=2

set noswapfile

if has('nvim')
  set inccommand=split
endif


" Language specific settings
autocmd Filetype py setlocal expandtab shiftwidth=4 softtabstop=4

let g:go_fmt_experimental = 1
