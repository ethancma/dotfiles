""""""""""""""""""""""""""""""""""""""""""""""""""""""
" augroups

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

autocmd BufWinEnter,WinEnter term://* startinsert
autocmd BufLeave term://* stopinsert

autocmd BufEnter * if &buftype == 'terminal' | :startinsert | endif

augroup configgroup
    autocmd!

    " White Space settings for different file types
    autocmd FileType c setlocal ts=4 sts=4 sw=4 tw=80 et
    autocmd FileType cpp setlocal ts=4 sts=4 sw=4 tw=80 et
    autocmd FileType make set ts=4 sts=4 sw=4 noexpandtab
    autocmd FileType markdown setl ts=4 sts=4 sw=4 tw=80 et
    autocmd FileType python setlocal ts=4 sts=4 sw=4 tw=80 et
    autocmd Filetype sh setlocal sts=4 sw=4 tw=80 et

augroup END

augroup prewrite
    autocmd!

    " Clean up trailing white spaces
    autocmd BufWritePre * call StripTrailingWhitespace()
    autocmd FileType markdown let b:noStripWhitespace=1
augroup END
