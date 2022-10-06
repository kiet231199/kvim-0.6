require('neoscroll').setup({
    -- All these keys will be mapped to their corresponding default scrolling animation
	-- mappings = {'<C-u>', '<C-d>', '<C-b>', '<C-f>',
	--             '<C-y>', '<C-e>'},
    hide_cursor = true,          -- Hide cursor while scrolling
    stop_eof = true,             -- Stop at <EOF> when scrolling downwards
    respect_scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file
    cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
    easing_function = "cubic",       -- Default easing function
    pre_hook = function(info) if info == "cursorline" then vim.wo.cursorline = false end end,
    post_hook = function(info) if info == "cursorline" then vim.wo.cursorline = true end end,
    performance_mode = false,    -- Disable "Performance Mode" on all buffers.
})

local t = {}
-- Syntax: t[keys] = {function, {function arguments}}
t['<C-u>'] = {'scroll', {'-0.4', 'true', '200', [['cubic']]}}
t['<C-d>'] = {'scroll', { '0.4', 'true', '200', [['cubic']]}}

-- Use the "cubic" cubic function
t['<C-b>'] = {'scroll', {'-0.95', 'false', '400', [['cubic']]}}
t['<C-f>'] = {'scroll', { '0.95', 'false', '400', [['cubic']]}}

-- Pass "cubic" to disable the cubic animation (constant scrolling speed)
t['<C-y>'] = {'scroll', {'-0.2', 'false', '100', [['sine']]}}
t['<C-e>'] = {'scroll', { '0.2', 'false', '100', [['sine']]}}

t['<ScrollWheelUp>'] = {'scroll', {'-0.25', 'true', '200', [['cubic']]}}
t['<ScrollWheelDown>'] = {'scroll', { '0.25', 'true', '200', [['cubic']]}}

-- When no easing function is provided the default easing function (in this case "quadratic") will be used
t['zt']    = {'zt', {'200'}}
t['zz']    = {'zz', {'200'}}
t['zb']    = {'zb', {'200'}}

require('neoscroll.config').set_mappings(t)
