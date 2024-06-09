-- Telescope
-- Configure keymaps for telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>p", builtin.find_files, {})
vim.keymap.set("n", "<leader>lg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>gc", builtin.git_commits, {})
vim.keymap.set("n", "<leader>gb", builtin.git_branches, {})

-- NvimTree
-- Toggle NvimTree
vim.api.nvim_set_keymap("n", "<leader>t", ":NvimTreeToggle<CR>", {
	noremap = true,
	silent = true,
})
-- Refresh NvimTree
vim.api.nvim_set_keymap("n", "<leader>r", ":NvimTreeRefresh<CR>", {
	noremap = true,
	silent = true,
})

-- Lspsaga
-- Code action
vim.api.nvim_set_keymap("n", "<leader>ca", ":Lspsaga code_action<CR>", {
	noremap = true,
	silent = true,
})
-- Hover documentation
vim.api.nvim_set_keymap("n", "<leader>hd", ":Lspsaga hover_doc<CR>", {
	noremap = true,
	silent = true,
})
-- Floating terminal
vim.api.nvim_set_keymap("n", "<leader>ft", ":Lspsaga term_toggle<CR>", {
	noremap = true,
	silent = true,
})
-- Go to definition
vim.api.nvim_set_keymap("n", "<leader>gd", ":Lspsaga goto_definition<CR>", {
	noremap = true,
	silent = true,
})

vim.api.nvim_set_keymap("n", "<leader>e", ":Lspsaga show_workspace_diagnostics<CR>", {
	noremap = true,
	silent = true,
})

-- Flutter

-- Command to trigger running all Flutter tools
vim.api.nvim_set_keymap("n", "<leader>far", ":lua run_flutter_tools()<CR>", {
	noremap = true,
	silent = true,
})
vim.api.nvim_set_keymap("n", "<leader>fr", ":lua flutter_hot_reload()<CR>", {
	noremap = true,
	silent = true,
})
vim.api.nvim_set_keymap("n", "<leader>ffr", ":lua flutter_hot_restart()<CR>", {
	noremap = true,
	silent = true,
})
vim.api.nvim_set_keymap("n", "<leader>faq", ":lua flutter_quit_app()<CR>", {
	noremap = true,
	silent = true,
})
vim.api.nvim_set_keymap("n", "<leader>fe", ":lua show_flutter_emulators()<CR>", { noremap = true, silent = true })

-- Clear search
vim.api.nvim_set_keymap("n", "<leader>cs", ":nohlsearch<CR>", {})

-- dap
vim.api.nvim_set_keymap("n", "<leader>br", ":lua require'dap'.toggle_breakpoint()<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>dc", ":lua start_dap()<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>do", ":lua require'dapui'.toggle()<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>dq", ":lua require'dap'.terminate()<CR>", {})

-- window resize
vim.api.nvim_set_keymap("n", "<leader>rh", ":vertical resize -5<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>rl", ":vertical resize +5<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>rj", ":horizontal resize +5<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>rk", ":horizontal resize -5<CR>", {})
