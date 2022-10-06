let g:blamer_delay = 500
let g:blamer_show_in_visual_modes = 0
let g:blamer_show_in_insert_modes = 0
let g:blamer_prefix = '      '
let g:blamer_template = ' <committer>    <author>    <committer-time>    <summary> '

highlight Blamer guifg=DarkYellow

nmap <F9> :BlamerToggle<CR>
