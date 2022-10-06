" Coc-explorer
nnoremap <F5> :CocCommand explorer --toggle --sources=buffer+,file+ --focus<CR>

" Coc-lightbulb
" Virtual text
hi default LightBulbDefaultVirtualText guifg=#FDD164
hi default link LightBulbQuickFixVirtualText LightBulbDefaultVirtualText
" Sign
hi default LightBulbDefaultSign guifg=#FDD164
hi default link LightBulbQuickFixSign LightBulbDefaultSign
" For numhl, you can set LightBulbDefaultSignLine, LightBulbQuickFixSignLine

" Coc-yank
nnoremap <silent> <A-y>  :<C-u>CocList -A --normal yank<cr>
