"""""""
" VIM "
"""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SETUP

filetype plugin indent on

" Setup plugins on fresh install.
if empty(glob("~/.config/nvim/autoload/plug.vim"))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source ~/.config/nvim/init.vim
endif

" Automatically install missing plugins.
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sourcing

source $HOME/.config/nvim/plugins.vim

syntax on
colorscheme monokai

source $HOME/.config/nvim/augroups.vim
source $HOME/.config/nvim/mappings.vim
source $HOME/.config/nvim/settings.vim
source $HOME/.config/nvim/lsp.vim
" source $HOME/.config/nvim/lsp.lua
