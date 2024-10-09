return { -- Collection of various small independent plugins/modules
	"echasnovski/mini.nvim",
	config = function()
		require("mini.starter").setup() -- better splash screen
		require("mini.ai").setup({ n_lines = 500 }) -- Better Around/Inside textobjects
		require("mini.surround").setup() -- Add/delete/replace surroundings (brackets, quotes, etc.)

		-- git diff highlighting
		-- require("mini.diff").setup()

		-- mini map
		local minimap = require("mini.map")
		minimap.setup({
			integrations = {
				minimap.gen_integration.diagnostic(),
				minimap.gen_integration.diff(),
				minimap.gen_integration.gitsigns(),
			},
		})
		vim.keymap.set("n", "<Leader>mt", MiniMap.toggle, { desc = "[m]ap [t]oggle" })
		vim.keymap.set("n", "<Leader>mf", MiniMap.toggle_focus, { desc = "[m]ap toggle [f]ocus" })
		vim.keymap.set("n", "<Leader>mr", MiniMap.refresh, { desc = "[m]ap [r]efresh" })

		-- status line
		local statusline = require("mini.statusline")
		statusline.setup({ use_icons = vim.g.have_nerd_font })
		---@diagnostic disable-next-line: duplicate-set-field
		statusline.section_location = function()
			return "%2l:%-2v"
		end
	end,
}
