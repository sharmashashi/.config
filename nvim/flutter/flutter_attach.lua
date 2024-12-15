flutter_terminal_buf = nil
function flutter_attach()
	-- Open a terminal and run flutter attach
	--vim.cmd('vsplit')
	vim.api.nvim_command("botright vsplit | vertical resize 50")
	local cmd = "flutter attach"
	-- Capture the terminal buffer ID
	vim.api.nvim_command("term " .. cmd)
	flutter_terminal_buf = vim.api.nvim_get_current_buf()
	vim.api.nvim_command("set modifiable")
	--vim.cmd("hide")
end

-- Function to send a command (e.g., 'r' or 'R') to the flutter attach terminal
function send_command_to_flutter(command)
	if flutter_terminal_buf and vim.api.nvim_buf_is_valid(flutter_terminal_buf) then
		local prev_bufnr = vim.fn.bufnr("%")

		-- Switch to the terminal buffer temporarily
		vim.api.nvim_set_current_buf(flutter_terminal_buf)

		-- Enter insert mode, feed keys, and exit insert mode
		vim.api.nvim_command("normal! i")
		vim.api.nvim_feedkeys(command, "n", true)
		vim.api.nvim_command("normal! <Esc>")
		-- putting delay to avoid changing buffer before entering keys in terminal
		vim.defer_fn(function()
			vim.api.nvim_set_current_buf(prev_bufnr)
		end, 1000)
	else
		print("No valid terminal buffer found.")
	end
end

-- Keymaps for hot reload and hot restart
function set_flutter_keymaps()
	-- Hot reload (send "r" to flutter attach terminal)
	vim.api.nvim_set_keymap('n', '<Leader>fr', ':lua send_command_to_flutter("r")<CR>',
		{ noremap = true, silent = true })

	-- Hot restart (send "R" to flutter attach terminal)
	vim.api.nvim_set_keymap('n', '<Leader>ffr', ':lua send_command_to_flutter("R")<CR>',
		{ noremap = true, silent = true })
end

function flutter_attach_setup()
	flutter_attach()
	set_flutter_keymaps()
end

