"""SETUP ZSH
"""sudo apt install zsh
"""sudo apt install powerline fonts-powerline
"""git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
"""cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
"""set zsh default chsh -s /bin/zsh

""" Use :PlugInstall - to install new plugins, :PlugUpdate to update all plugins

""" Plugins
call plug#begin('~/.local/share/nvim/plugged')
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-sensible'
  Plug 'preservim/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'sheerun/vim-polyglot'
  Plug 'joshdick/onedark.vim'
  Plug 'dense-analysis/ale'
  Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
  Plug 'neoclide/coc.nvim'
call plug#end()

"""Now, when you hit Ctrl + p you should be able to perform a fuzzy file search.
"""can be opened in a horizontal split by pressing ctrl + x or in a vertical split by pressing ctrl + v

"""Prettier use command :Prettier

""" Mappings
let mapleader=","
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
let NERDTreeCustomOpenArgs={'file':{'where': 't'}}

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ 
}

filetype plugin on
set omnifunc=syntaxcomplete#Complete

""" Comments Mappings
map <leader>c <Esc>:Commentary<CR>
vmap <leader>c gc

""" Dublicate line mapping
nmap <C-d> mzyyp`z
nnoremap <MiddleMouse> :tabclose<CR> 

""" Tabs Mappings
map <leader>t <Esc>:tabnew<CR>

map <leader>w <Esc>:tabclose<CR>
map <leader>W <Esc>:tabclose!<CR>
map <leader>1 <Esc>1gt
map <leader>2 <Esc>2gt
map <leader>3 <Esc>3gt
map <leader>4 <Esc>4gt
map <leader>5 <Esc>5gt
map <leader>6 <Esc>6gt
map <leader>7 <Esc>7gt
map <leader>8 <Esc>8gt
map <leader>9 <Esc>9gt

""" FZF

""" Hide statusline
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
autocmd BufWinEnter * NERDTreeMirror

""" Common
syntax on
colorscheme onedark
set encoding=UTF-8
set mouse=a
set termguicolors
set background=dark
set clipboard=unnamedplus
set noswapfile
set updatetime=300
set shell=zsh

" Indentation
set wrap
set textwidth=79
set tabstop=2
set expandtab
set shiftwidth=2
set autoindent
set smartindent

filetype on
filetype plugin on
filetype indent on

set autoread
au FocusGained * :checktime

set number relativenumber

if exists('&colorcolumn')
  set colorcolumn=80
endif

