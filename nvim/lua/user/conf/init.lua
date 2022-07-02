vim.notify = require("notify")
require "user.conf.notify"
require "user.conf.nvim-tree"
require "user.conf.cmp"
require "user.conf.lualine"
require "user.conf.gitsign"
require "user.conf.FTerm"
require "user.conf.vimtex"
require "user.conf.treesitter"
require "user.conf.aerial"
require "user.conf.telescope"
require "user.conf.comment"
require "user.conf.indent_blankline"
require "user.conf.luasnip"
require 'user.conf.alpha'
require('aerial').setup()
require('lualine').setup()
require('nvim-autopairs').setup({
  disable_filetype = { "TelescopePrompt" , "vim" },
})
