" Lens configuration
let g:lens#disabled = 1			" Auto enable
" let g:lens#animate = 0			" Enable animation
let g:lens#height_resize_max = 30
let g:lens#height_resize_min = 10
let g:lens#width_resize_max = 120
let g:lens#width_resize_min = 10
" map <C-w>h <C-w>h :call animate#window_delta_width(-50)<CR>
" map <C-w>j <C-w>j :call animate#window_delta_height(-50)<CR>
" map <C-w>k <C-w>k :call animate#window_delta_height(-50)<CR>
" map <C-w>l <C-w>l :call animate#window_delta_width(-50)<CR>

" Animate configuration
let g:animate#duration = 300.0
let g:animate#easing_func = 'animate#ease_linear'
