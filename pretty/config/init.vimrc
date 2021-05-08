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
" Plug 'dhruvasagar/vim-table-mode'

" Code Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Optical
Plug 'itchyny/lightline.vim'
Plug 'psliwka/vim-smoothie'
" Plug 'junegunn/goyo.vim'

" Themes
Plug 'challenger-deep-theme/vim', { 'name': 'challenger-deep' }
" Plug 'cocopon/iceberg.vim'
" Plug 'nightsense/carbonized'
" Plug 'rakr/vim-two-firewatch'
" Plug 'rakr/vim-togglebg'
" Plug 'sonph/onehalf', {'rtp': 'vim/'}
" Plug 'ayu-theme/ayu-vim'
" Plug 'morhetz/gruvbox'

" Languages
" Plug 'pangloss/vim-javascript'
" Plug 'mxw/vim-jsx'
" Plug 'mattn/emmet-vim'
" Plug 'rust-lang/rust.vim'
" Plug 'shime/vim-livedown'
" Plug 'plasticboy/vim-markdown'
" Plug 'posva/vim-vue'
" Plug 'wavded/vim-stylus'
" Plug 'previm/previm'
" Plug 'leafgarland/typescript-vim'
" Plug 'peitalin/vim-jsx-typescript'

" Plug 'vimwiki/vimwiki'

call plug#end()
