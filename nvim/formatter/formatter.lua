-- Function to check if the current buffer's filetype is Dart
local function isDartFile()
	local filetype = vim.api.nvim_buf_get_option(0, "filetype")
	return filetype == "dart"
end

local function isGoFile()
	local filetype = vim.api.nvim_buf_get_option(0, "filetype")
	return filetype == "go"
end

local function isLuaFile()
	local filetype = vim.api.nvim_buf_get_option(0, "filetype")
	return filetype == "lua"
end

-- command to save, format and re load the current dart file
function FormatCurrentFile()
	if isDartFile() then
		vim.cmd(":!dart format %")
	elseif isGoFile() then
		vim.cmd(":!gofmt %")
	elseif isLuaFile then
		vim.cmd(":!stylua %")
	else
		vim.cmd(":!prettier % --write")
	end
	vim.fn.feedkeys("<CR>", "n")
end

-- Map <Leader>df to call the format function
vim.api.nvim_set_keymap("n", "<Leader>df", [[:lua FormatCurrentFile()<CR>]], { noremap = true, silent = true })
