let g:gitguter_max_signs = -1
let g:gitgutter_sign_added = ''
let g:gitgutter_sign_modified = ''
let g:gitgutter_sign_removed = ''

function! GitStatus()
  let [a,m,r] = GitGutterGetHunkSummary()
  return printf('+%d ~%d -%d', a, m, r)
endfunction
set statusline+=%{GitStatus()}

highlight! link SignColumn LineNr
highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1

highlight def link GitGutterAddLine DiffAdd
highlight def link GitGutterChangeLine DiffChange
highlight def link GitGutterDeleteLine DiffDelete
highlight def link GitGutterChangeDeleteLine GitGutterChangeLineDefault

" nnoremap <silent> <F4> :GitGutterToggle<CR>
