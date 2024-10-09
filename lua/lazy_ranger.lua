return {
	"kelly-lin/ranger.nvim",
	config = function()
		require("ranger-nvim").setup({ replace_netrw = true })
		vim.api.nvim_set_keymap("n", "<leader>ef", "", {
			noremap = true,
			desc = "[e]xplore [f]iles",
			callback = function()
				require("ranger-nvim").open(true)
			end,
		})
	end,
}
