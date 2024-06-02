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

require("lazy").setup("plugins")

require('utils')
require('keymapping')
require('linenumber').setup()
require('shell')
require('flutter.flutter')
require('dartlsp')
require('nvimcmpconfig')
