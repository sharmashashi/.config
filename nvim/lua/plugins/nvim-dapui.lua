return {
	"rcarriga/nvim-dap-ui",
	requires = { "mfussenegger/nvim-dap" },
	config = function()
		require("dapui").setup({
			layouts = {
				{
					elements = { "breakpoints", "scopes" },
					position = "top",
					size = 0.15,
				},
				{
					elements = { "repl" },
					position = "top",
					size = 0.25,
				},
			},
		})
	end,
}
