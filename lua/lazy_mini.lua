return { -- Collection of various small independent plugins/modules
	"echasnovski/mini.nvim",
	config = function()
		-- Better Around/Inside textobjects
		--
		-- Examples:
		--  - va)  - [V]isually select [A]round [)]paren
		--  - yinq - [Y]ank [I]nside [N]ext [']quote
		--  - ci'  - [C]hange [I]nside [']quote
		require("mini.ai").setup({ n_lines = 500 })

		-- git diff highlighting
		require("mini.diff").setup()

		-- mini map
		local minimap = require("mini.map")
		minimap.setup({
			integrations = {
				minimap.gen_integration.diagnostic(),
				minimap.gen_integration.diff(),
				minimap.gen_integration.gitsigns(),
			},
		})
		vim.keymap.set("n", "<Leader>mc", MiniMap.close, { desc = "[m]ap [c]lose" })
		vim.keymap.set("n", "<Leader>mf", MiniMap.toggle_focus, { desc = "[m]ap toggle [f]ocus" })
		vim.keymap.set("n", "<Leader>mo", MiniMap.open, { desc = "[m]ap [o]pen" })
		vim.keymap.set("n", "<Leader>mt", MiniMap.toggle, { desc = "[m]ap [t]oggle" })
		vim.keymap.set("n", "<Leader>mr", MiniMap.refresh, { desc = "[m]ap [r]efresh" })

		-- Add/delete/replace surroundings (brackets, quotes, etc.)
		--
		-- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
		-- - sd'   - [S]urround [D]elete [']quotes
		-- - sr)'  - [S]urround [R]eplace [)] [']
		require("mini.surround").setup()

		-- Simple and easy statusline.
		--  You could remove this setup call if you don't like it,
		--  and try some other statusline plugin
		local statusline = require("mini.statusline")
		-- set use_icons to true if you have a Nerd Font
		statusline.setup({ use_icons = vim.g.have_nerd_font })

		-- You can configure sections in the statusline by overriding their
		-- default behavior. For example, here we set the section for
		-- cursor location to LINE:COLUMN
		---@diagnostic disable-next-line: duplicate-set-field
		statusline.section_location = function()
			return "%2l:%-2v"
		end
	end,
}
