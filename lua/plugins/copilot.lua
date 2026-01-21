return {
	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot", -- load on Copilot commands
		event = "InsertEnter", -- optional lazy load
		dependencies = {
			"copilotlsp-nvim/copilot-lsp", -- (optional) for NES functionality
		},
		config = function()
			require("copilot").setup({
				filetypes = {
					markdown = true,
					sh = function()
						if string.match(vim.fs.basename(vim.api.nvim_buf_get_name(0)), "^%.env.*") then
							-- disable for .env files
							return false
						end
						return true
					end,
				},
				suggestion = {
					enabled = true,
					auto_trigger = true,
					keymap = {
						accept = "<Tab>",
					},
				},
				nes = {
					enabled = true,
					keymap = {
						accept_and_goto = "<leader>p",
						accept = false,
						dismiss = "<Esc>",
					},
				},
			})
		end,
	},
}
