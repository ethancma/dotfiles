""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Settings

" Spacing
set autoindent
set backspace=indent,eol,start
set cmdheight=2
set expandtab
set shiftwidth=4
set signcolumn=yes
set smartindent
set so=3
set softtabstop=4
set tabstop=4

" Linebreak / Wrapping
set lbr
set tw=500
set wrap

" Split Screens
set splitbelow
set splitright

" Searching
set cursorline
set hlsearch
set ignorecase
set incsearch
set smartcase
set wildmenu
set wildmode=longest:list,full

" Miscellaneous
set autoread
set clipboard=unnamedplus
set completeopt=menuone,noinsert,noselect
set confirm             " Confirm before closing file
set hidden
set laststatus=2
set lazyredraw
set mouse=a             " Enable mouse use
set nocompatible
set nofoldenable
set noshowmode          " Disable default statusbar
set number
set relativenumber
set shortmess+=c
set showcmd
set showmatch           " Matching brackets/quotes/parenthesis
set title
set updatetime=100
set ttyfast

" Disable annoying sounds
set noerrorbells        " Disable annoying sounds
set novisualbell
set t_vb=
set tm=500

" Backups / Files
set encoding=utf8
set nobackup
set noswapfile
set nowb
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Configurations

" Markdown
" let g:instant_markdown_slow = 1
let g:instant_markdown_mathjax = 1

" NERDTree
let NERDTreeDirArrows=1
let NERDTreeMinimalUI=1
let NERDTreeShowHidden=1
let g:NERDTreeChDirMode=2
let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__', 'node_modules']
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:nerdtree_tabs_focus_on_files=1

" Vim move - uses Control+[hjkl]
let g:move_key_modifier = 'A'

" Goyo
let g:goyo_width = 110

" Presence
" General options
let g:presence_auto_update         = 1
let g:presence_debounce_timeout    = 10
let g:presence_enable_line_number  = 0
let g:presence_blacklist           = []
let g:presence_buttons             = 1
let g:presence_file_assets         = {}

" Coc Config
" let g:coc_global_extensions = [
"   \ 'coc-clangd',
"   \ 'coc-python',
"   \ 'coc-snippets',
"   \ ]
