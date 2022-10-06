" Default configuration
let g:airline_powerline_fonts = 1
let g:airline_theme = "dark"
let g:onedark_terminal_italics = 1

" Config section
function! AirlineInit()
	let g:airline_section_a = airline#section#create(['mode', 'branch'])
	let g:airline_section_b = airline#section#create_left(['hunks', '%f'])
	let g:airline_section_c = airline#section#create(['filetype'])
	let g:airline_section_x = airline#section#create(['%P'])
	let g:airline_section_y = airline#section#create(['%B'])
endfunction
autocmd VimEnter * call AirlineInit()

" Enable extension (disable whitespace)
let g:airline_extensions = ['branch' , 'coc', 'fugitiveline', 'keymap', 'nvimlsp', 'quickfix', 'searchcount', 'tabline', 'tagbar', 'term', 'wordcount']

" Show file's short path 
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#left_alt_sep = ''     " Enable Tab seperator
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#hunks#coc_git = 1

let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
  
" Powerline symbols
" let g:airline_left_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ''
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' :'
let g:airline_symbols.maxlinenr = ' ☰'
let g:airline_symbols.dirty=' '
let g:airline_symbols.colnr = ' ℅:'
