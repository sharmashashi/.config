-- change split buff focus
vim.api.nvim_set_keymap("n", "<leader>w", "<C-w>w", {
	noremap = true,
	silent = true,
})
-- command mode on esc on shell
vim.cmd([[tnoremap <Esc> <C-\><C-n>]])
