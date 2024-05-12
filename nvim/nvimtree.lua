require("nvim-tree").setup({
    sort = {
        sorter = "case_sensitive"
    },
    view = {
        side = 'left',
        width = 30
    },
    renderer = {
        group_empty = true
    },
    filters = {
        dotfiles = true 
    },
    git = {
	ignore = false
    }
})
