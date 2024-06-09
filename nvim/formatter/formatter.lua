local function getFileType()
	local filetype = vim.api.nvim_buf_get_option(0, "filetype")
	return filetype
end

-- command to save, format and re load the current dart file
function FormatCurrentFile()
	if getFileType() == "dart" then
		vim.cmd(":!dart format %")
	elseif getFileType() == "go" then
		vim.cmd(":!gofmt %")
	elseif getFileType() == "lua" then
		vim.cmd(":!stylua %")
	else
		vim.cmd(":!prettier % --write")
	end
	vim.fn.feedkeys("<CR>", "n")
end

-- Map <Leader>df to call the format function
vim.api.nvim_set_keymap("n", "<Leader>df", [[:lua FormatCurrentFile()<CR>]], { noremap = true, silent = true })
