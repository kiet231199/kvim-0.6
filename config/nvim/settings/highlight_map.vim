" Config some highlight
highlight MyLine guifg=#A9B1D6 guibg=Normal
highlight VertSplit guifg=#A9B1D6
highlight LineNr guifg=#697094
highlight CursorLineNr guifg=#FEFE14
highlight IncSearch guifg=Black guibg=Red
highlight TabLineFill guibg=#13141C

" Config PopupMenu highlight
highlight Pmenu guibg=Normal
highlight PmenuSel guifg=None guibg=#292938
highlight PmenuSbar guibg=Normal
highlight PmenuThumb guifg=#A9B1D6
highlight cPmenuThumb guifg=#A9B1D6 guibg=None

" Config Scrollbar highlight
highlight default link ScrollView cPmenuThumb

" Highlight for Hlslens
highlight MyHlSearch guifg=Red guibg=Normal
hi default link HlSearchNear IncSearch
hi default link HlSearchLens Normal
hi default link HlSearchLensNear MyHlSearch
hi default link HlSearchFloat IncSearch

