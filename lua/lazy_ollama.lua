return {
	"nomnivore/ollama.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},

	-- All the user commands added by the plugin
	cmd = { "Ollama", "OllamaModel", "OllamaServe", "OllamaServeStop" },

	keys = {
		-- Sample keybind for prompt menu. Note that the <c-u> is important for selections to work properly.
		{
			"<leader>oo",
			":<c-u>lua require('ollama').prompt()<cr>",
			desc = "ollama prompt",
			mode = { "n", "v" },
		},

		-- Sample keybind for direct prompting. Note that the <c-u> is important for selections to work properly.
		{
			"<leader>oG",
			":<c-u>lua require('ollama').prompt('Generate_Code')<cr>",
			desc = "ollama Generate Code",
			mode = { "n", "v" },
		},

		{
			"<leader>oA",
			":<c-u>lua require('ollama').prompt('Ask_About_Code')<cr>",
			desc = "[o]llama ask",
			mode = { "n", "v" },
		},
	},
	config = function()
		require("ollama").setup({
			model = os.getenv("OLLAMA_CLIENT_MODEL") or "llama3",
			url = os.getenv("OLLAMA_CLIENT_URL") or "http://127.0.0.1:11434",
			serve = {
				on_start = false,
			},

			prompts = {
				---@diagnostic disable-next-line: missing-fields
				Ask_About_Code = {
					input_label = "> ",
					action = require("ollama.actions.factory").create_action({
						display = true,
						insert = false,
						replace = false,
						show_prompt = true,
						window = "vsplit",
					}),
				},
			},
		})
	end,
}
