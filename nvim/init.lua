local home = os.getenv('HOME')
package.path = package.path .. ';' .. home .. '/.config/nvim/?.lua'

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-- Setup lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system(
        { "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", -- latest stable release
            lazypath })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({ 
	{ 'mfussenegger/nvim-dap' },
        {
            "folke/tokyonight.nvim",
            priority = 1000,
            lazy = false
        },
        {
            'nvim-telescope/telescope.nvim',

            tag = '0.1.x',
            dependencies = { 'nvim-lua/plenary.nvim' }
        },
	{
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = { "nvim-tree/nvim-web-devicons" }

        }, 
        { 'neovim/nvim-lspconfig' },
        { 'hrsh7th/nvim-cmp', 'neovim/nvim-lspconfig', 'hrsh7th/cmp-nvim-lsp', 'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path', 'hrsh7th/cmp-cmdline' },
        {
            'nvimdev/lspsaga.nvim',
            dependencies = { 'nvim-treesitter/nvim-treesitter', -- optional
                'nvim-tree/nvim-web-devicons'          -- optional
            }
        },
        {
            'nvim-lualine/lualine.nvim',
            dependencies = { 'nvim-tree/nvim-web-devicons' }
        }, { 'lewis6991/gitsigns.nvim' },
        --{
        --"folke/todo-comments.nvim",
        --dependencies = {"nvim-lua/plenary.nvim"}
        --},
        {
            "L3MON4D3/LuaSnip",
            -- follow latest release.
            version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
            -- install jsregexp (optional!).
            build = "make install_jsregexp"
        },
        {
            'windwp/nvim-autopairs',
            event = "InsertEnter",
            opts = {} -- this is equalent to setup({}) function
        },
        { "rcarriga/nvim-dap-ui",   requires = { "mfussenegger/nvim-dap" } },

    },
    {})


require('utils')
require('keymapping')
require('linenumber').setup()
-- require('autosave').setup()
require('shell')
require('flutter.flutter')
require('nvimtree')
require('dartlsp')
require('nvimcmp')
require('lspsagaconfig')
require('lualineconfig')
require('gitsignsconfig')
require('dapconfig')
require('tokyonightconfig')
require('nvimdapuiconfig')
require'lspconfig'.tsserver.setup{}
