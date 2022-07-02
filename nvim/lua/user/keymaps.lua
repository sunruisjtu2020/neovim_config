vim.notify = require("notify")
local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

map('n', '<Space>', '', opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
-- Buffer Control
map('n', '<leader>cb', '<CMD>bp<CR><CMD>bd#<CR>', opts)
map('n', '<leader>p', '<CMD>TablineBufferPrevious<CR>', opts)
map('n', '<leader>n', '<CMD>TablineBufferNext<CR>', opts)
-- Move between splited windows
map('n', '<C-h>', '<C-w>h', opts)
map('n', '<C-j>', '<C-w>j', opts)
map('n', '<C-k>', '<C-w>k', opts)
map('n', '<C-l>', '<C-w>l', opts)
-- Resize with arrows
map("n", "<C-Up>", ":resize -2<CR>", opts)
map("n", "<C-Down>", ":resize +2<CR>", opts)
map("n", "<C-Left>", ":vertical resize +2<CR>", opts)
map("n", "<C-Right>", ":vertical resize -2<CR>", opts)
-- DAP Debugger
map("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", opts)
map("n", "<leader>dB", "<cmd>lua require'dap'.set_breakpoint(vim.fn.input '[Condition] > ')<cr>", opts)
map("n", "<leader>dr", "lua require'dap'.repl.open()<cr>", opts)
map("n", "<leader>dl", "lua require'dap'.run_last()<cr>", opts)
map('n', '<F10>', '<cmd>lua require"user.dap.dap-util".reload_continue()<CR>', opts)
map("n", "<F4>", "<cmd>lua require'dap'.terminate()<cr>", opts)
map("n", "<F5>", "<cmd>lua require'dap'.continue()<cr>", opts)
map("n", "<F6>", "<cmd>lua require'dap'.step_over()<cr>", opts)
map("n", "<F7>", "<cmd>lua require'dap'.step_into()<cr>", opts)
map("n", "<F8>", "<cmd>lua require'dap'.step_out()<cr>", opts)
map("n", "K", "<cmd>lua require'dapui'.eval()<cr>", opts)
-- Nvim Tree
map('n', '<leader>tr', '<CMD>NvimTreeToggle<CR>', opts)
map('n', '<leader>m', '<CMD>AerialToggle<CR>', opts)
-- Float Terminal
map('n', '<leader>ft', '<CMD>lua require("FTerm").toggle()<CR>', opts)
-- Telescope
map('n', '<leader>fd', '<CMD>Telescope fd<CR>', opts)
map('n', '<leader>ff', '<CMD>Telescope find_files<CR>', opts)
map('n', '<leader>tc', '<CMD>Telescope colorscheme<CR>', opts)
map('n', '<leader>fk', '<CMD>Telescope keymaps<CR>', opts)
map('n', '<leader>fg', '<CMD>Telescope live_grep<CR>', opts)
