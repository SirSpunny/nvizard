return { -- Useful plugin to show you pending keybinds.
	"folke/which-key.nvim",
	event = "VeryLazy", -- Sets the loading event to 'VimEnter'
	options = {},
	keys = {
		{ "<leader>o", group = "ollama" },
		{ "<leader>d", group = "diagnostics" },
		{ "<leader>m", group = "map" },
		{ "<leader>s", group = "search" },
	},
}

--	["<leader>o"] = { name = "[o]llama", _ = "which_key_ignore" },
--	["<leader>c"] = { name = "[c]ode", _ = "which_key_ignore" },
--	["<leader>d"] = { name = "[d]ocument", _ = "which_key_ignore" },
--	["<leader>r"] = { name = "[r]ename", _ = "which_key_ignore" },
--	["<leader>s"] = { name = "[s]earch", _ = "which_key_ignore" },
--	["<leader>e"] = { name = "[e]xplorer", _ = "which_key_ignore" },
--	["<leader>p"] = { name = "[p]roject", _ = "which_key_ignore" },
--	["<leader>t"] = { name = "[t]erminal", _ = "which_key_ignore" },
--	["<leader>m"] = { name = "[m]ap", _ = "which_key_ignore" },
