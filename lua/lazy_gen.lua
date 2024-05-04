return {
	"David-Kunz/gen.nvim",
	opts = {
		model = os.getenv("OLLAMA_CLIENT_MODEL") or "llama3", -- The default model to use.
		host = os.getenv("OLLAMA_CLIENT_HOST") or "127.0.0.1", -- The host running the Ollama service.
		port = os.getenv("OLLAMA_CLIENT_PORT") or "11434", -- The port on which the Ollama service is listening.
		display_mode = "split", -- The display mode. Can be "float" or "split".
		show_model = true, -- Displays which model you are using at the beginning of your chat session.
		show_prompt = true,
	},
	keys = {
		{ "<leader>cg", "<cmd>Gen<CR>", desc = "[c]hat [g]enerative llm" },
	},
}
