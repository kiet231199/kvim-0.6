" ========================================== INFORMATION ==========================================
" Version information:
"	- Github for configuration: https://github.com/kiet231199/GitTraining.git
"	- Font: Hack nerd font - bold
"	- OS: Linux Ubuntu x64
"	- NeoVIM: 0.6.0
" Required extensions
"	- Nodejs
"	- Python3
"	- Pynvim (not installed)
"	- Lazygit
"	- Ripgrep
"	- Clang + LLVM
"	- Exuberants Ctags
"	- Bat
"	- Minimap

call plug#begin('~/.config/nvim/plugged')
" ========================================== Feature plugins ==========================================
	
	" Status line ---------------------------------------- (NEED TO UPDATE - On track)
	" 1. vim-airline (VIM) -- 2. lualine (NeoVIM-0.6)
 	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	" Plug 'nvim-lualine/lualine.nvim'
	" Bufferline ----------------------------------------- (NEED TO UPDATE - On track)
	" 1. vim-airline (VIM) -- 2. cokeline (NeoVIM-0.6) -- 3. barbar (NeoVIM-0.8)
	" Plug 'noib3/nvim-cokeline'
	" Explorer ------------------------------------------- (NEED TO UPDATE)
	" 1. coc-explorer extensions (NeoVIM-0.6) -- 2. neo-tree.nvim (NeoVIM-0.6)-- 3. nvim-tree.lua (NeoVIM-0.8)
	" Quick comment code --------------------------------- (NEED TO UPDATE)
	" 1. nerdcommenter (VIM) -- 2. Comment.nvim (NeoVIM-0.6)
	Plug 'preservim/nerdcommenter'
	" Show git diff in popup
	" 1. git-messenger.vim (NeoVIM-0.6)
	Plug 'rhysd/git-messenger.vim'
	" Show git blamer ------------------------------------ (NEED TO UPDATE)
	" 1. blamer.nvim (NeoVIM-0.6) -- 2. gitsigns.nvim (NeoVIM-0.?)
	Plug 'APZelos/blamer.nvim'
	" Show branch off git repo in statusline ------------- (NEED TO UPDATE)
	" 1. vim-gitgutter (VIM) -- 2. gitsigns.nvim (NeoVIM-0.?)
	Plug 'airblade/vim-gitgutter' 
	" Show status git icon in code ----------------------- (NEED TO UPDATE)
	" 1. vim-fugitive (VIM) -- 2. gitsigns.nvim (NeoVIM-0.?)
	Plug 'tpope/vim-fugitive'
	" Easy git command with lazygit extensions
	" 1. lazygit.nvim (NeoVIM-0.6) ----------------------- (NEED TO TEST)
	Plug 'kdheepak/lazygit.nvim'
	" Open float terminal when using Nvim ---------------- (NEED TO UPDATE)
	" 1. vim-floaterm (VIM) -- 2. oterm.nvim
	Plug 'voldikss/vim-floaterm'
	" Quick replace
	" 1. vim-easy-replace (VIM)
	Plug 'kqito/vim-easy-replace'
	" Quick align
	" 1. vim-easy-align (VIM)
	Plug 'junegunn/vim-easy-align'
	" Move line of code quickly -------------------------- (NEED TO UPDATE)
	" 1. vim-move (VIM) -- 2. move.nvim (Nvim-0.?)
	Plug 'matze/vim-move'
	" Multiple cursor for quicky fill or remove code ----- (NEED TO TEST)
	" 1. vim-visual-multi
	Plug 'mg979/vim-visual-multi', {'branch': 'master'}
	" Show taglist (variable, functions, ...)
	" 1. tagbar (VIM)
	Plug 'majutsushi/tagbar'
	" Auto close parentheses
	" 1. auto-pairs (VIM) -- 2. nvim-autopaisr (NeoVIM-0.8)
	Plug 'jiangmiao/auto-pairs' 
	" Quick fill parentheses ----------------------------- (NEED TO TEST)
	" 1. vim-surround (VIM) -- 2. nvim-surround (NeoVIM-0.8)
	Plug 'tpope/vim-surround'						
	" Menu options (for rightclick mouse)
	" 1. rightclick-macros
	Plug 'kvngvikram/rightclick-macros'	
	" Completion, snippets, diagnostic code
	" 1. coc.nvim (NeoVIM-0.6) -- 2. nvim-lspconfig (NeoVIM-0.6)
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'pappasam/coc-jedi'
	" Fuzzy Finder --------------------------------------- (NEED TO UPDATE)
	" 1. Telescope - branch 0.6 (NeoVIM-0.6) -- 2. Telescope - branch main (NeoVIM-0.8)
	Plug 'nvim-telescope/telescope.nvim', { 'tag': 'nvim-0.6' }		
	Plug 'nvim-telescope/telescope-file-browser.nvim'
	Plug 'nvim-telescope/telescope-fzy-native.nvim'
	Plug 'fannheyward/telescope-coc.nvim'
	Plug 'nvim-lua/plenary.nvim'
	" Clipboard ------------------------------------------ (NEED TO UPDATE)
	" 1. nvim-neoclip.lua (NeoVIM-0.6) -- 2. nvim-neoclip.lua with sqlite3 (NeoVIM-0.8)
	Plug 'AckslD/nvim-neoclip.lua'				
	" Register
	" 1. register.nvim - tags v1.5.0 (NeoVIM-0.6) -- 2. register.nvim - tags v2.0.0 (NeoVIM-0.8)
	Plug 'tversteeg/registers.nvim', { 'tag': 'v1.5.0' }
	" Search and replace ----------------------------------- (NEED TO INSTALL - On track)
	" 1. sad.nvim (NeoVIM-0.?) -- 2. nvim-spectre (NeoVIM-0.?) -- 3. searchbox.nvim (NeoVIM-0.8)
	Plug 'ray-x/guihua.lua'
	Plug 'ray-x/sad.nvim'

" ========================================== UI plugins (options) ==========================================

	" Theme ---------------------------------------------- (NEED TO UPDATE)
	" 1. onedark (VIM) -- 2. tokyonight.nvim (NeoVIM-0.8)
    " Startup window
	" 1. startup.nvim (NeoVIM-0.6)
    Plug 'startup-nvim/startup.nvim'
	" Notice popup window
	" 1. nvim-notify (NeoVIM-0.6) -- 2. nvim-notify with color (NeoVIM-0.8)
	Plug 'rcarriga/nvim-notify'					
	" Popup wilder
	" 1. wilder.nvim (NeoVIM-0.6)
	function! UpdateRemotePlugins(...)
		" Needed to refresh runtime files
		let &rtp=&rtp
		UpdateRemotePlugins
	endfunction
	Plug 'gelguy/wilder.nvim', { 'do': function('UpdateRemotePlugins') }
	" Show diagnostic
	" 1. trouble.nvim (NeoVIM-0.6)
	Plug 'folke/trouble.nvim'
	" Highlight or underline word undercursor
	" 1. vim-cursorword (VIM) -- 2. nvim-cursorline (NeoVIM-0.8)
	Plug 'itchyny/vim-cursorword'
	" Smooth scrolling ----------------------------------- (NEED TO UPDATE)
	" 1. vim-smoothie (VIM) -- 2. Cinamon (NeoVIM-0.?) -- 3. neoscroll.nvim (NeoVIM-0.8)
	Plug 'psliwka/vim-smoothie'
	" Focus function ------------------------------------- (NEED TO UPDATE)
	" 1. twilight.nvim (NeoVIM-0.6) with zen-mode (NeoVIM-0.?) -- 2. peepsight.nvim (NeoVIM-0.8)
	Plug 'folke/twilight.nvim'	
	Plug 'folke/zen-mode.nvim'
	" Scrollbar can be use with mouse
	" 1. nvim-scrollview (NeoVIM-0.6)
	Plug 'dstein64/nvim-scrollview', { 'branch': 'main' }
	" Highlight search
	" 1. nvim-hlslens
	Plug 'kevinhwang91/nvim-hlslens'
	" Minimap for code structure and highlight search
	" 1. minimap.vim (NeoVIM-0.6)
	Plug 'wfxr/minimap.vim'
	" Dim inactive windows
	" 1. Shade.nvim (NeoVIM-0.6)
	Plug 'sunjon/Shade.nvim'
	" Window switching animation
	" 1. lens.vim (VIM)
	Plug 'camspiers/animate.vim'
	Plug 'camspiers/lens.vim'

" ========================================== Highlight, icon plugins ==========================================

	" Show indentline
	" 1. indent-blankline.nvim (NeoVIM-0.6) -- 2. indent-blankline.nvim with lua script (NeoVIM-0.8)
	Plug 'lukas-reineke/indent-blankline.nvim'
	" Color for parentheses
	" 1. rainbow_parentheses.vim (VIM)
	Plug 'kien/rainbow_parentheses.vim'
	" Vim C highlight
	" 1. vim-cpp-modern (VIM) -- 2. vim-lsp-cxx-highlight (VIM)
	Plug 'bfrg/vim-cpp-modern'
	Plug 'jackguo380/vim-lsp-cxx-highlight'
	" Icons
	Plug 'ryanoasis/vim-devicons'
	Plug 'kyazdani42/nvim-web-devicons'

" ========================================== Future plugins ==========================================

	" Tree sitter highlight layer
	" 1. nvim-treesitter - branch 0.5-compat (NeoVIM-0.6) -- 2. nvim-treesitter - branch main (NeoVIM-0.8)
	" Todo comment (NEED TO UPDATE)
	" 1. todo-comments.nvim (NeoVIM-0.?)
	" Highlight function arguments
	" 1. hlargs.nvim (NeoVIM-0.?)
	" Nvim-web-devicons configurations
	" 1. nvim-nonicons (NeoVIM-0.?)
	" Popup configuration
	" 1. popup.nvim (NeoVIM-0.?)
	" Project management
	" 1. project.nvim (NeoVIM-0.6)
	
call plug#end()

" Auto go to newline after 72 columns
autocmd Filetype gitcommit setlocal spell textwidth=72

" Set hardware
set mouse=a
set mousemodel=popup

" Color configuration
if !has('gui_running')
	set t_Co=256
endif
set termguicolors
colorscheme onedark

" Change coc.nvim path
let g:coc_data_home = '/data2/kietpham/nvim-kietpham/coc'
" let g:coc_data_home = '~/nvim-kietpham/coc'

" Call lua settings
lua << EOF
	require('pluglua')
	require("notify")("Welcome Kiet Pham", "info", {title="RZ Feature Package"})
EOF

" Call vim settings
for setting_file in split(glob(stdpath('config').'/settings/*.vim'))
execute 'source' setting_file
endfor

" Set GUI
set signcolumn=yes
set number
set relativenumber
set nowrap
set nobackup
set noswapfile
set clipboard+=unnamedplus
set hlsearch
set smarttab
set tabstop     =4            
set softtabstop =4            
set shiftwidth  =4
set autoindent
set breakindent
set ai
set si
set showmatch
set showcmd
set cursorline
set modifiable
set wildmenu
set wildmode=list
set scrolloff=0
set guitablabel=%t\ M%
set splitright
set splitbelow

" Other settings
filetype plugin on
set synmaxcol=150
set lazyredraw

" Enable C highlight
let g:lsp_cxx_hl_use_text_props = 1
