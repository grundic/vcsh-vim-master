"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"
"let g:syntastic_go_checkers = ['golint', 'govet']
"let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
"
"let g:syntastic_go_checkers = ['golint', 'govet', 'gometalinter']
"let g:syntastic_go_gometalinter_args = ['--disable-all', '--enable=errcheck']
"let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
"
"" don't stop if one checker fails, soldier on
"let g:syntastic_aggregate_errors = 1
