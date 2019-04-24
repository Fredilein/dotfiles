call plug#begin('~/.config/nvim/plugged')

" File Navigation
Plug 'scrooloose/nerdtree'
Plug '/usr/local/opt/fzf'	      " brew installation
Plug 'junegunn/fzf.vim'

" tpope
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'

" Commands
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'godlygeek/tabular'
Plug 'junegunn/vim-easy-align'
Plug 'christoomey/vim-tmux-navigator'
Plug 'machakann/vim-sandwich'
Plug 'easymotion/vim-easymotion'

" Code Completion
Plug 'honza/vim-snippets'
Plug 'Shougo/denite.nvim'
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}

" Optical
Plug 'edkolev/tmuxline.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/goyo.vim'

" Themes
Plug 'noah/vim256-color'
Plug 'cocopon/iceberg.vim'
Plug 'nightsense/carbonized'
Plug 'rakr/vim-two-firewatch'
Plug 'rakr/vim-togglebg'
Plug 'sonph/onehalf', {'rtp': 'vim/'}

" Languages
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'mattn/emmet-vim'
Plug 'rust-lang/rust.vim'
Plug 'shime/vim-livedown'
Plug 'plasticboy/vim-markdown'

call plug#end()
