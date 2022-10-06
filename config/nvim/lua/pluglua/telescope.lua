require('telescope').setup{
	defaults = {
		layout_config = {
			prompt_position = 'top',
			preview_width = 0.5
		},
		-- Default configuration for telescope goes here:
		-- config_key = value,
		-- other layout configuration here
	},
	mappings = {
		i = {
			-- map actions.which_key to <C-h> (default: <C-/>)
			-- actions.which_key shows the mappings for your picker,
			-- e.g. git_{create, delete, ...}_branch for the git_branches picker
			["<C-h>"] = "which_key"
		}
	},
	pickers = {
		-- Default configuration for builtin pickers goes here:
		-- picker_name = {
		--   picker_config_key = value,
		--   ...
		-- }
		-- Now the picker_config_key will be applied every time you call this
		-- builtin picker
		find_files = {
			-- theme = "dropdown"
		}
	},
	extensions = {
		-- Your extension configuration goes here:
		fzy_native = {
			override_generic_sorter = false,
			override_file_sorter = true,
		},
		file_browser = {
			theme = "ivy",
			-- disables netrw and use telescope-file-browser in its place
		}
	}
}

require('telescope').load_extension('file_browser')
require('telescope').load_extension('neoclip')

-- keymap is configured in keymap.vim
-- nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
-- nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
-- nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
-- nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

-- <C-n>/<Down			Next item
-- <C-p>/<Up			Previous item
-- j/k					Next/previous (in normal mode)
-- H/M/L				Select High/Middle/Low (in normal mode)
-- gg/G				Select the first/last item (in normal mode)
-- <CR>				Confirm selection
-- <C-x				Go to file selection as a split
-- <C-v				Go to file selection as a vsplit
-- <C-t				Go to a file in a new tab
-- <C-u				Scroll up in preview window
-- <C-d				Scroll down in preview window
-- <C-/				Show mappings for picker actions (insert mode)
-- ?					Show mappings for picker actions (normal mode)
-- <C-c				Close telescope
-- <Esc				Close telescope (in normal mode)
-- <Tab				Toggle selection and move to next selection
-- <S-Tab				Toggle selection and move to prev selection
-- <C-q				Send all items not filtered to quickfixlist (qflist)
-- <M-q				Send all selected items to qflist
