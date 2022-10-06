local wilder = require('wilder')
wilder.setup({modes = {':', '/', '?'}})

wilder.set_option('renderer', wilder.renderer_mux({
	[':'] = wilder.popupmenu_renderer({
		highlighter = wilder.basic_highlighter(),
	}),
	['/'] = wilder.wildmenu_renderer({
		highlighter = wilder.basic_highlighter(),
	}),
}))

wilder.set_option('renderer', wilder.popupmenu_renderer(
	wilder.popupmenu_border_theme({
		highlights = {
			border = 'MyLine', -- highlight to use for the border
		},
		border = 'rounded',
		pumblend = 35,
		min_width = '50%', -- minimum height of the popupmenu, can also be a number
		max_width = '50%',
		min_height = '5%', -- to set a fixed height, set max_height to the same value
		max_height = '80%',
		reverse = 0,        -- if 1, shows the candidates from bottom to top
		left = {' ', wilder.popupmenu_devicons()},
		right = {' ', wilder.popupmenu_scrollbar({thumb_char = '▞', thumb_hl = 'cPmenuThumb'})},
	})
))
