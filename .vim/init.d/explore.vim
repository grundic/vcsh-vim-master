" you don't need NERDtree or (maybe) netrw
" https://shapeshed.com/vim-netrw/

" Changing the directory view in netrw
" With the directory browser open hit i to cycle through the view types. There
" are four different view types: thin, long, wide and tree.
let g:netrw_liststyle = 3

" The directory banner is mostly useless. To remove it temporarily press I
let g:netrw_banner = 0

" Changing how files are opened
" 1 - open files in a new horizontal split
" 2 - open files in a new vertical split
" 3 - open files in a new tab
" 4 - open in previous window
let g:netrw_browse_split = 4

" Open file in vertical split in netrw
let g:netrw_altv = 1

" Set the width of the directory explorer
let g:netrw_winsize = 15
