local dap = require('dap')

  dap.adapters.dart = {
    type = "executable",
    command = "flutter",
    args = {"debug_adapter"}
  }
  dap.configurations.dart = {
    {
      type = "dart",
      request = "launch",
      name = "Launch Flutter Program",
      -- The nvim-dap plugin populates this variable with the filename of the current buffer
      program = "${file}",
      -- The nvim-dap plugin populates this variable with the editor's current working directory
      cwd = "${workspaceFolder}",

      -- This gets forwarded to the Flutter CLI tool, substitute `linux` for whatever device you wish to launch
      --toolArgs = {"-d", "macos"}
      --toolArgs = {"-d", "chrome"}
      --toolArgs = {"-d", "9B68399B-1DAD-4967-856D-F6E99456E579"}
      --toolArgs = {"-d", "emulator-5554"}
      toolArgs = {"-d", "065c95130405"}
    }
  }

function start_dap()
	dap.continue()
	vim.defer_fn(ignore_breakpoints,2000) --Executes ignore_breakpoints function after 2 second
end

function ignore_breakpoints()
	dap.set_exception_breakpoints({})
end
