highlight IndentBlanklineChar0 guifg=#001EFF gui=nocombine
highlight IndentBlanklineChar1 guifg=#0038FF gui=nocombine
highlight IndentBlanklineChar2 guifg=#0051FF gui=nocombine
highlight IndentBlanklineChar3 guifg=#0067FF gui=nocombine
highlight IndentBlanklineChar4 guifg=#007EFF gui=nocombine
highlight IndentBlanklineChar5 guifg=#0099FF gui=nocombine
highlight IndentBlanklineChar6 guifg=#00AFFF gui=nocombine
highlight IndentBlanklineChar7 guifg=#00C9FF gui=nocombine
highlight IndentBlanklineChar8 guifg=#00DBFF gui=nocombine
highlight IndentBlanklineChar9 guifg=#00FFFF gui=nocombine

let g:indent_blankline_char = '¦'
let g:indent_blankline_char_highlight_list = [ "IndentBlanklineChar0",
											  \"IndentBlanklineChar1",
											  \"IndentBlanklineChar2",
											  \"IndentBlanklineChar3",
											  \"IndentBlanklineChar4",
											  \"IndentBlanklineChar5",
											  \"IndentBlanklineChar6",
											  \"IndentBlanklineChar7",
											  \"IndentBlanklineChar8",
											  \"IndentBlanklineChar9"]

nnoremap <F7> :IndentBlanklineToggle<CR>
