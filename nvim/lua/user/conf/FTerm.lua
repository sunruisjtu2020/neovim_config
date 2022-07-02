vim.notify = require('notify')

local status_ok, FTerm = pcall(require, 'FTerm')
if not status_ok then
	vim.notify('FTerm not found!', 'error')
	return
end
require'FTerm'.setup({
    border = 'single',
	cmd = 'zsh',
    dimensions  = {
        height = 0.8,
        width = 0.7,
    },
})

