nnoremap <silent> gL <cmd>call coc#rpc#request('fillDiagnostics', [bufnr('%')])<CR><cmd>TroubleToggle loclist<CR>
nnoremap <silent> gR :TroubleToggle lsp_references<CR>
nnoremap <silent> <leader>xx :TroubleToggle<CR>
nnoremap <silent> <leader>xw :TroubleToggle workspace_diagnostics<CR>
nnoremap <silent> <leader>xd :TroubleToggle document_diagnostics<CR>
nnoremap <silent> <leader>xl :TroubleToggle loclist<CR>
nnoremap <silent> <leader>xq :TroubleToggle quickfix<CR>
