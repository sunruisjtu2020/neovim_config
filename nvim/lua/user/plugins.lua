vim.notify = require("notify")

local fn = vim.fn

local install_path = fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system {
        'git',
        'clone',
        '--depth',
        '1',
        'https://github.com/wbthomason/packer.nvim',
        install_path,
    }
    print 'Installing packer close and reopen Neovim...'
    vim.cmd [[packadd packer.nvim]]
end

vim.cmd [[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]]

local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

packer.init {
    display = {
        open_fn = function()
            return require('packer.util').float { border = 'rounded' }
        end,
    }
}

return packer.startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'lewis6991/impatient.nvim'
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use "folke/which-key.nvim"
    use 'lukas-reineke/indent-blankline.nvim'
    use 'goolord/alpha-nvim'
    -- Color Scheme
    use "lunarvim/darkplus.nvim"
    use "navarasu/onedark.nvim"
    use 'Mofiqul/vscode.nvim'
    use 'kvrohit/substrata.nvim'
    use "rafamadriz/neon"
    use 'marko-cerovac/material.nvim'
    use 'tanvirtin/monokai.nvim'
    use 'tiagovla/tokyodark.nvim'
    use 'shaunsingh/solarized.nvim'
    use "rebelot/kanagawa.nvim"
    use 'shaunsingh/nord.nvim'
    use "daschw/leaf.nvim"
    use "savq/melange"
    use 'kyazdani42/blue-moon'
    use 'titanzero/zephyrium'
    use 'adisen99/apprentice.nvim' 
    use "ellisonleao/gruvbox.nvim"
    -- ====
    use 'Mofiqul/adwaita.nvim'
    use "terrortylor/nvim-comment"
    use "kyazdani42/nvim-tree.lua"     -- file explore
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
    }
    use "nvim-treesitter/nvim-treesitter-textobjects"  -- enhance texetobject selection
    use "romgrk/nvim-treesitter-context"

    use "andymass/vim-matchup"
    use "rcarriga/nvim-notify"
    use "hrsh7th/nvim-cmp" -- The completion plugin
    use "hrsh7th/cmp-buffer" -- buffer completions
    use "hrsh7th/cmp-path" -- path completions
    use "hrsh7th/cmp-cmdline" -- cmdline completions
    use "saadparwaiz1/cmp_luasnip" -- snippet completions
    use "hrsh7th/cmp-nvim-lsp"	-- lsp support
    use "hrsh7th/cmp-nvim-lua"	-- neovim api
    -- snippets
    use "L3MON4D3/LuaSnip" --snippet engine
    use "rafamadriz/friendly-snippets" -- a bunch of snippets to use
    -- LSP
    use "neovim/nvim-lspconfig" -- enable LSP
    use "williamboman/nvim-lsp-installer" -- simple to use language server installer
    use "kosayoda/nvim-lightbulb"  -- code action
    use "ray-x/lsp_signature.nvim"  -- show function signature when typing
    -- Debugger
    -- use "ravenxrz/DAPInstall.nvim"   -- help us install several debuggers
    -- use "ravenxrz/nvim-dap"
    -- use "theHamsta/nvim-dap-virtual-text"
    -- use "rcarriga/nvim-dap-ui"
    -- Git
    use "lewis6991/gitsigns.nvim"
    use "tanvirtin/vgit.nvim"
    -- Others
    use "stevearc/aerial.nvim"
    use "windwp/nvim-autopairs"
    use "kyazdani42/nvim-web-devicons"
    -- Telescope
    use "nvim-telescope/telescope.nvim"
    use {
        "nvim-telescope/telescope-fzf-native.nvim",
        run = "make",
    }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use "nvim-telescope/telescope-ui-select.nvim"
    use "nvim-telescope/telescope-live-grep-raw.nvim"
    use "MattesGroeger/vim-bookmarks"
    use "tom-anders/telescope-vim-bookmarks.nvim"
    use "nvim-telescope/telescope-dap.nvim"
    --
    use {
        'kdheepak/tabline.nvim',
        config = function()
            require'tabline'.setup {
                enable = false,
                options = {
                    modified_italic = false,
                    show_dev_icons = true,
                    show_filename_only = true,
                }
            }
        end,
        requires = {'hoob3rt/lualine.nvim', 'kyazdani42/nvim-web-devicons'}
    }
    use "numToStr/FTerm.nvim"
    use "mhinz/neovim-remote"
    use "lervag/vimtex"
    if PACKER_BOOTSTRAP then
        require('packer').sync()
    end
end)
