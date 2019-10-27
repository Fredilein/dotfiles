# Installed Vim Plugins


## File Navigation

### Nerdtree
[Github](https://github.com/scrooloose/nerdtree)
| Cmd      | Descr         |
|----------|---------------|
| `Ctrl-n` | Open NERDTree |
| `?`      | Help          |

### Fzf
[Github](https://github.com/junegunn/fzf.vim)
| Cmd  | Descr           |
|------|-----------------|
| `,f` | Files           |
| `,g` | Find in project |
| `,w` | Show Windows    |
| `'`  | Buffers         |
| `,i` | Commits         |


## Tools

### Vim-fugitive
[Github](https://github.com/tpope/vim-fugitive/blob/master/README.markdown)
| Cmd           | Descr                     |
|---------------|---------------------------|
| `:Gstatus`    |                           |
| `:Gwrite`     | write and add             |
| `:Gcommit`    | and :Gpush, :Gpull...     |
| `:Gdiffsplit` | view changes side by side |

### Vim-commentary
[Github](https://github.com/tpope/vim-commentary)
| Cmd   | Descr                  |
|-------|------------------------|
| `gcc` | Comment out line       |
| `gc`  | In visual, motion, ... |

### undotree
[Github](https://github.com/mbbill/undotree)
Mapped to `,u`


## Commands

### Vim-prettier
[Github](https://github.com/prettier/vim-prettier)
`,p` to format file. I think it's better than coc-prettier.

### Vim-easy-align
[Github](https://github.com/junegunn/vim-easy-align)
Pretty crazy.

### Vim-tmux-navigator
[Github](https://github.com/christoomey/vim-tmux-navigator)
Navigation between tmux panes and vim splits.

### Vim-sandwich
[Github](https://github.com/machakann/vim-sandwich)
Add, delete, replace brackets and stuff around words and stuff. `s[a/d/r]{textobject}{bread}`

### Vim-easymotion
[Github](https://github.com/easymotion/vim-easymotion)
Code navigation on steroids.
| Cmd             | Descr          |
|-----------------|----------------|
| `t{Letter}`     | Jump to Letter |
| `<leader>[j/k]` | Jump down/up   |

### Vim-table-mode
[Github](https://github.com/dhruvasagar/vim-table-mode)
Easily create tables. `<leader>tm` to toggle table mode. Especially useful for markdown.


## Code Completion

### Coc-vim
[Github](https://github.com/neoclide/coc.nvim)
VSCode level code completion. Need to install plugins for each language.
| Cmd          | Descr                 |
|--------------|-----------------------|
| `gd`         | Go to definition      |
| `gy`         | Go to type definition |
| `gi`         | Go to implementation  |
| `gr`         | References            |
| `K`          | Show documentation    |
| `<leader>rn` | Rename current word   |

### Emmet-vim
[Github](https://github.com/mattn/emmet-vim)
Crazy useful for HTML.


## Optical

### Lightline
[Github](https://github.com/itchyny/lightline.vim)

### Vim-devicons
[Github](https://github.com/ryanoasis/vim-devicons)

### Goyo
[Github](https://github.com/junegunn/goyo.vim)
Distraction free writing. Toggle with `:Goyo`.

### Vim-Livedown
[Github](https://github.com/shime/vim-livedown)
Live markdown preview.

