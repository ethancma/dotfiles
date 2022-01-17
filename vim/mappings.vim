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

inoremap jj <Esc>

" Use <cr> to confirm completion.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

nmap <C-n> :NERDTreeToggle<CR>

" Remap for rename current word
nmap <F2> <Plug>(coc-rename)

" navigate split screens easily
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Functions

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
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
