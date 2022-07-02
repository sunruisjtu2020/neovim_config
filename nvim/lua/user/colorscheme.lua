--nord--------------------------------
vim.g.nord_contrast = true
vim.g.nord_borders = false
vim.g.nord_disable_background = false
vim.g.nord_cursorline_transparent = true
vim.g.nord_enable_sidebar_background = false
vim.g.nord_italic = false
-- vim.cmd("colorscheme nord")
--neon--------------------------------
vim.g.neon_style = "default"
vim.g.neon_italic_keyword = false
vim.g.neon_italic_function = false
vim.g.neon_italic_variable = false
vim.g.neon_transparent = false
vim.g.neon_italic_boolean = true
-- vim.cmd[[colorscheme neon]]
--kanagawa------------------------------------
-- vim.cmd("colorscheme kanagawa")

--solarized-------------------------------------
vim.g.solarized_italic_comments = true
vim.g.solarized_italic_keywords = true
vim.g.solarized_italic_functions = true
vim.g.solarized_italic_variables = false
vim.g.solarized_contrast = true
vim.g.solarized_borders = false
vim.g.solarized_disable_background = false
-- vim.cmd("colorscheme solarized")

--tokyodark-------------------------------------
vim.g.tokyodark_enable_italic_comment = false
vim.g.tokyodark_enable_italic = false
vim.g.tokyodark_transparent_background = false
vim.cmd[[colorscheme tokyodark]]

--leaf-------------------------------------
require("leaf").setup({
    undercurl = true,
    commentStyle = "italic",
    functionStyle = "NONE",
    keywordStyle = "italic",
    statementStyle = "bold",
    typeStyle = "NONE",
    variablebuiltinStyle = "italic",
    transparent = false,
    colors = {},
    overrides = {},
    theme = "darker", -- default, alternatives: "light", "dark", "lighter", "darker", "lightest", "darkest"
})
-- vim.cmd("colorscheme leaf")

--material-------------------------------------
vim.g.material_style = "deepocean" -- "darker", "lighter", "oceanic", "palenight", "deepocean"
require('material').setup({

	contrast = {
		sidebars = false, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
		floating_windows = false, -- Enable contrast for floating windows
		line_numbers = false, -- Enable contrast background for line numbers
		sign_column = false, -- Enable contrast background for the sign column
		cursor_line = false, -- Enable darker background for the cursor line
		non_current_windows = false, -- Enable darker background for non-current windows
		popup_menu = false, -- Enable lighter background for the popup menu
	},

	italics = {
		comments = false, -- Enable italic comments
		keywords = false, -- Enable italic keywords
		functions = false, -- Enable italic functions
		strings = false, -- Enable italic strings
		variables = false -- Enable italic variables
	},

	contrast_filetypes = { -- Specify which filetypes get the contrasted (darker) background
		"terminal", -- Darker terminal background
		"packer", -- Darker packer background
		"qf" -- Darker qf list background
	},

	high_visibility = {
		lighter = false, -- Enable higher contrast text for lighter style
		darker = false -- Enable higher contrast text for darker style
	},

	disable = {
		colored_cursor = false, -- Disable the colored cursor
		borders = false, -- Disable borders between verticaly split windows
		background = true, -- Prevent the theme from setting the background (NeoVim then uses your teminal background)
		term_colors = false, -- Prevent the theme from setting terminal colors
		eob_lines = false -- Hide the end-of-buffer lines
	},

	lualine_style = "default", -- Lualine style ( can be 'stealth' or 'default' )

	async_loading = true, -- Load parts of the theme asyncronously for faster startup (turned on by default)

	custom_highlights = {} -- Overwrite highlights with your own
})
-- vim.cmd("colorscheme material")
