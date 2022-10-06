" Popup configure
let g:git_messenger_no_default_mappings = v:true

let g:git_messenger_floating_win_opts = { 'border': 'rounded' }
let g:git_messenger_include_diff = "all"

let g:git_messenger_close_on_cursor_moved = v:false
let g:git_messenger_always_into_popup = v:true

let g:git_messenger_max_popup_height = 25
let g:git_messenger_max_popup_width = 80

" Example: '2019 May 26 03:27:43'
let g:git_messenger_date_format = "%Y %b %d %X"

nmap <F10>  <Plug>(git-messenger)
