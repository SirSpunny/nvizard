return {
	"kelly-lin/ranger.nvim",
	config = function()
		local nranger = require("ranger-nvim")
		nranger.setup({
			replace_netrw = true,
			ui = {
				border = "single",
				height = 0.9,
				width = 0.9,
				x = 0.5,
				y = 0.5,
			},
		})
		vim.api.nvim_set_keymap("n", "<leader>ef", "", {
			noremap = true,
			callback = function()
				nranger.open(true)
			end,
		})
	end,
}
