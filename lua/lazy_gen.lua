return {
	"David-Kunz/gen.nvim",
	opts = {
		model = vim.g.OLLAMA_MODEL or "llama3", -- The default model to use.
		host = vim.g.OLLAMA_HOST or "127.0.0.1", -- The host running the Ollama service.
		port = vim.g.OLLAMA_PORT or "11434", -- The port on which the Ollama service is listening.
		display_mode = "split", -- The display mode. Can be "float" or "split".
		show_model = true, -- Displays which model you are using at the beginning of your chat session.
		show_propt = true,
		no_auto_close = false, -- Never closes the window automatically.
		debug = false, -- Prints errors and the command which is run.
	},
	keys = {
		{ "<leader>tg", "<cmd>Gen<CR>", desc = "gen {ai}" },
	},
}
