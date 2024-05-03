return {
	"lewis6991/gitsigns.nvim", -- Adds git related signs to the gutter, as well as utilities for managing changes
	event = "VeryLazy",
	opts = {
		signs = {
			add = { text = "┃" },
			change = { text = "┃" },
			delete = { text = "_" },
			topdelete = { text = "‾" },
			changedelete = { text = "~" },
			untracked = { text = "┆" },
		},
		numhl = true, -- Toggle with `:Gitsigns toggle_numhl`
		linehl = true, -- Toggle with `:Gitsigns toggle_linehl`
		word_diff = false, -- Toggle with `:Gitsigns toggle_word_diff`
	},
}
