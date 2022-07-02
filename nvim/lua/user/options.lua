vim.notify = require("notify")
local options = {
    backup = false,
    clipboard = 'unnamedplus',
    cmdheight = 1,
    showmode = false,
    conceallevel = 0,
    termguicolors = true,
    mouse = 'a',
    fileencoding = 'utf-8',
    ignorecase = true,
    smartcase = true,
    smartindent = true,
    cindent = true,
    autoindent = true,
    tabstop = 4,
    shiftwidth = 4,
    number = true,
    relativenumber = true,
    showtabline = 2,
    wrap = false,
    cursorline = true,
    cursorcolumn = false,
    showcmd = true,
    signcolumn = "yes",
    hlsearch=  true,
    expandtab = true,
}

vim.opt.shortmess:append 'c'
for k, v in pairs(options) do
    vim.opt[k] = v
end

vim.cmd "set whichwrap+=<,>,[,],h,l"

-- vim.cmd([[
-- let g:clipboard = {
--     \   'name': 'win32yank-wsl',
--     \   'copy': {
--     \      '+': 'win32yank.exe -i --crlf',
--     \      '*': 'win32yank.exe -i --crlf',
--     \    },
--     \   'paste': {
--     \      '+': 'win32yank.exe -o --lf',
--     \      '*': 'win32yank.exe -o --lf',
--     \   },
--     \   'cache_enabled': 0,
--     \ }
-- ]])

if vim.fn.has "wsl" == 1 then
    vim.g.clipboard = {
        copy = {
            ["+"] = "win32yank.exe -i --crlf", 
            ["*"] = "win32yank.exe -i --crlf",
        },
        paste = {
            ["+"] = "win32yank.exe -o --lf",
            ["*"] = "win32yank.exe -o --lf",
        },
    }
end
vim.api.nvim_create_autocmd("BufReadPost", {
    pattern = {"*"},
    callback = function()
        if vim.fn.line("'\"") > 1 and vim.fn.line("'\"") <= vim.fn.line("$") then
            vim.api.nvim_exec("normal! g'\"",false)
        end
    end
})
