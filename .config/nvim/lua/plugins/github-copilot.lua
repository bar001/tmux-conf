return {
	"github/copilot.vim",
	config = function()
		-- Key mappings for GitHub Copilot
		vim.g.copilot_no_tab_map = true
		vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

		-- Optional: Additional settings
		vim.g.copilot_filetypes = {
			["*"] = true,
			["markdown"] = true,
			["yaml"] = true,
		}

		-- Optional: Disable Copilot for specific filetypes
		vim.g.copilot_filetypes = {
			["TelescopePrompt"] = false,
			["dap-repl"] = false,
		}
	end,
}
