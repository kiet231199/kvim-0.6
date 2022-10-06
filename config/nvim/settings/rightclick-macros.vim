let g:rightclick_normal_items =  [ 'Twilight'	,
								\  'Lens'		,
								\  'Todo List'  ,
								\  'Shade	   ']
let g:rightclick_normal_macros = [ ':Twilight'	,
								\  ':call lens#toggle()',
								\  ':TodoTelescope',
								\  ',st' ]

let g:rightclick_nvim_boarder_nw = "╭"
let g:rightclick_nvim_boarder_ne = "╮"
let g:rightclick_nvim_boarder_sw = "╰"
let g:rightclick_nvim_boarder_se = "╯"
let g:rightclick_nvim_boarder_h  = "─"
let g:rightclick_nvim_boarder_v  = "│"

let g:rightclick_default_config = 0
" nnoremap <silent> <RightMouse> <LeftMouse>:call Rightclick_normal()<CR>
" inoremap <silent> <RightMouse> <Esc>:call Rightclick_normal()<CR>
" vnoremap <silent> <RightMouse> <LeftMouse>:call Rightclick_visual()<CR>
" nnoremap <LeftMouse> <LeftMouse>i

let g:rightclick_default_mappings = 0
nnoremap <A-m> :call Rightclick_normal()<CR>
vnoremap <A-m> :call Rightclick_visual()<CR>

