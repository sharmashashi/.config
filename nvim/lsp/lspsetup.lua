require("mason").setup()
require("mason-lspconfig").setup()
require("lsp.dartlsp")
require'lspconfig'.lua_ls.setup({})
require'lspconfig'.pylsp.setup({})
require'lspconfig'.ruby_lsp.setup({})
require'lspconfig'.tsserver.setup({})
require'lspconfig'.bashls.setup({})
