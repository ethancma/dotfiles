call plug#begin(stdpath('config') . '/plugged')

" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'morhetz/gruvbox'

Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'townk/vim-autoclose'
Plug 'tpope/vim-commentary'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'suan/vim-instant-markdown'
Plug 'crusoexia/vim-monokai'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'andweeb/presence.nvim'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/goyo.vim'
Plug 'matze/vim-move'
Plug 'tpope/vim-surround'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'

call plug#end()
