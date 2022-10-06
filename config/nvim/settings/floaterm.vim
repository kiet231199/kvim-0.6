let g:floaterm_wintype = 'float'
let g:floaterm_borderchars = '─│─│╭╮╯╰'
let g:floaterm_opener = 'vsplit'

let g:floaterm_keymap_new    = '<A-n><F8>'
let g:floaterm_keymap_kill	 = '<A-x><F8>'
let g:floaterm_keymap_toggle = '<F8>'

" Move floaterm
tnoremap <C-left> <C-\><C-n> :FloatermUpdate --width=0.5 --wintype=vsplit --position=topleft<CR>
tnoremap <C-up> <C-\><C-n> :FloatermUpdate --height=0.5 --wintype=split --position=leftabove --opener=vsplit<CR>
tnoremap <C-right> <C-\><C-n> :FloatermUpdate --width=0.5 --wintype=vsplit --position=botright<CR>
tnoremap <C-down> <C-\><C-n> :FloatermUpdate --height=0.5 --wintype=split --position=rightbelow --opener=vsplit<CR>

tnoremap <C-t> <C-\><C-n>
tnoremap <RightMouse> ip

hi Floaterm guibg=Normal
hi FloatermBorder guifg=#A9B1D6 guibg=Normal
