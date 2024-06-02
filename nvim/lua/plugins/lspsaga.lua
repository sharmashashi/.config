return {
    'nvimdev/lspsaga.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', -- optional
        'nvim-tree/nvim-web-devicons'                   -- optional
    },
    config = function()
        require('lspsaga').setup({
            ui = {
                code_action = ''
            },
            code_action = {
                extend_gitsigns = true
            }
        })
    end
}
