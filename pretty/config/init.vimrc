"
" ===== init.vimrc =====
"
" List of all plugins installed with vim-plug
"

call plug#begin('~/.config/nvim/plugged')

" File Navigation
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Tools
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
" Plug 'mbbill/undotree'

" Commands
Plug 'christoomey/vim-tmux-navigator'
Plug 'machakann/vim-sandwich'
Plug 'easymotion/vim-easymotion'
" Plug 'junegunn/vim-easy-align'

" Code Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Optical
Plug 'itchyny/lightline.vim'
Plug 'psliwka/vim-smoothie'
" Plug 'junegunn/goyo.vim'

" Themes
Plug 'challenger-deep-theme/vim', { 'name': 'challenger-deep' }

" Languages
Plug 'evanleck/vim-svelte', {'branch': 'main'}
Plug 'pangloss/vim-javascript'
Plug 'mattn/emmet-vim'
Plug 'darrikonn/vim-gofmt'
" Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'shime/vim-livedown'

call plug#end()
