""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings

" Sets <leader>
let mapleader=';'

" Disable search highlighting with <leader><cr>
map <silent> <leader><cr> :noh<cr>

" Tab Management
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader><left> :tabprev<cr>
map <leader><right> :tabnext<cr>

runtime! ftplugin/man.vim

" Only write.
nnoremap <leader>w <esc>:w<cr>

" Only quit.
nnoremap <leader>q <esc>:q<cr>

" Easily exit insert mode
inoremap jj <Esc>

" Enter to get new line
nnoremap <cr> o<Esc>

" Easy clipboard copy
xnoremap <silent><leader>c :w !pbcopy<CR><CR>

" Easy clipboard paste
nnoremap <silent><leader>v :r !pbpaste<CR><CR>

" Use <cr> to confirm completion.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Control-n to toggle NERDTree
nmap <C-n> :NERDTreeToggle<CR>

" Remap for rename current word
nmap <F2> <Plug>(coc-rename)

" navigate split screens easily
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Opens neovim builtin terminal
nnoremap <c-t> :call OpenTerminal()<CR>

" Turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>

" Terminal navigation
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l

" Git
nnoremap <leader>gs :Git<cr>
nnoremap <leader>ga :Gwrite<cr>
nnoremap <leader>gr :Gread<cr>
nnoremap <leader>gc :Git commit<cr>
nnoremap <leader>gl :Git log<cr>
nnoremap <leader>gp :Git push<cr>
nnoremap <leader>gpl :Git pull<cr>
nnoremap <leader>gd :Gdiffsplit<cr>
nnoremap <leader>gb :Git blame<cr>
nnoremap <leader>gst :Git status<cr>

" Toggle sign column.
nnoremap <leader>s :call ToggleSignColumn()<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Functions

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

" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1] =~# '\s'
endfunction

function! StripTrailingWhitespace()
    " Only strip if the b:noStripeWhitespace variable isn't set
    if exists('b:noStripWhitespace')
        return
    endif
    %s/\s\+$//e
endfunction

" open terminal on ctrl+;
" uses zsh instead of bash
function! OpenTerminal()
  split term://zsh
  resize 10
endfunction

function! ToggleSignColumn()
  if (&signcolumn == "yes")
    set signcolumn=no
  else
    set signcolumn=yes
  endif
endfunction
