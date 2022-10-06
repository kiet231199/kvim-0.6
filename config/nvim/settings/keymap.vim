" ========================================== Function key ==========================================
" <F3> for Minimap
" <F4> for GitGutter
" <F5> for Explorer

" Toggle Tagbar
nnoremap <silent> <F6> :TagbarToggle<CR>

" <F7> for IndentLine
" <F8> for Floaterm
" <F9> for BlamerToggle
" <F10> for GitMessengerToggle

" Coc Toggle
nnoremap <silent> <F11> :call CocToggle()<CR>

" Toggle relative line numbers and regular line numbers.
map <silent> <F12> :set norelativenumber!<CR>

" ========================================== Coding key ==========================================

" Clear highlight when press <Esc>
nnoremap <silent> <esc> :noh<CR><esc>

" Open register
nnoremap <silent> <C-r> :Registers<CR>

" Switch to next tab
nnoremap <A-.> :tabn<CR>
" Switch to previous tab
nnoremap <A-,> :tabp<CR>
" Close tab
nnoremap <A-c> :bd<CR>
" Switch to specific tab 
nnoremap <A-1> 1gt<CR>
nnoremap <A-2> 2gt<CR>
nnoremap <A-3> 3gt<CR>
nnoremap <A-4> 4gt<CR>
nnoremap <A-5> 5gt<CR>
nnoremap <A-6> 6gt<CR>
nnoremap <A-7> 7gt<CR>
nnoremap <A-8> 8gt<CR>
nnoremap <A-9> 9gt<CR>

" New tab
nnoremap <silent> te :tabedit 
nnoremap <silent> sh :split<CR><C-w>w
nnoremap <silent> sv :vsplit<CR><C-w>w

" Select all
nnoremap <C-a> vv<S-v>G

" Disable copy when in paste in visual mode
vnoremap <silent>p p:let @+=@0<CR>:let @"=@0<CR>

" Save and quit all
nnoremap qq :wqa<CR>

" Map some common button to insert mode
nnoremap <Tab> i<Tab>
nnoremap <CR> i<CR>
inoremap <C-Space> <BS>

" Move cursor in insert mode
inoremap <A-h> <Left>
inoremap <A-j> <Down>
inoremap <A-k> <Up>
inoremap <A-l> <Right>

" Move cursor quickly
nnoremap <S-h> 3b
nnoremap <S-j> 3j
nnoremap <S-k> 3k
nnoremap <S-l> 3w

" Resize windows
nnoremap <silent> <A-right> :vertical resize -2<CR>    
nnoremap <silent> <A-left> :vertical resize +2<CR>
nnoremap <silent> <A-down> :resize +2<CR>
nnoremap <silent> <A-up> :resize -2<CR>

" Save and source
nnoremap <silent> <C-s> :w<CR>:lua require("notify")("Save successfull 勒", "info",{title = "Save file "})<CR>:noh<CR>
" Source font
nnoremap <silent> ss :source ~/.config/nvim/init.vim<CR>:lua require("notify")("Reload successfull 勒", "info",{title = "Reload configuration "})<CR>:noh<CR>
