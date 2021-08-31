"""""""
" VIM "
"""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SETUP

let vim_plug_just_installed = 0
let vim_plug_path = expand('~/.vim/autoload/plug.vim')
if !filereadable(vim_plug_path)
	echo "Installing Vim-Plug"
	echo ""
	silent !mkdir -p ~/.vim/autoload
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	let vim_plug_just_installed = 1
endif

if vim_plug_just_installed
	:execute 'source '.fnameescape(vim_plug_path)
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Spacing
set tabstop=4 
set shiftwidth=4
set softtabstop=4
set expandtab
set smartindent
set autoindent
set backspace=indent,eol,start

" Split Screens
set splitright
set splitbelow

" Searching
set incsearch
set ignorecase
set hlsearch

" Miscellaneous
syntax on
set confirm             " Confirm before closing file
set showcmd
set showmatch           " Matching brackets/quotes/parenthesis
set laststatus=2
set noshowmode          " Disable default statusbar
set number
set relativenumber
set noerrorbells        " Disable annoying sounds 
set novisualbell
set mouse=a             " Enable mouse use
set wildignore+=.swp    

" Colors
colorscheme monokai
hi CocErrorFloat ctermfg=124 ctermbg=245 guifg=#FF0000 guibg=#FF0000

call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-commentary'
Plug 'townk/vim-autoclose'
Plug 'crusoexia/vim-monokai'

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings

" Sets <leader>
let mapleader=' '

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Disable search highlighting with <leader><cr>
map <silent> <leader><cr> :noh<cr>

" Tab Management
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader><left> :tabnext<cr>
map <leader><right> :tabprev<cr>
