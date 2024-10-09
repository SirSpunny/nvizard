return { -- Useful plugin to show you pending keybinds.
	"folke/which-key.nvim",
	event = "VeryLazy", -- Sets the loading event to 'VimEnter'
	opts = {
		spec = {
			{ "<leader>d", group = "[d]iagnostics" },
			{ "<leader>e", group = "[e]xplore" },
			{ "<leader>m", group = "[m]ap" },
			{ "<leader>o", group = "[o]llama" },
			{ "<leader>s", group = "[s]earch" },
			{ "<leader>t", group = "[t]erminal" },
		},
	},
	keys = {},
}
