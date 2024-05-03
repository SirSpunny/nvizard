return {
	"ms-jpq/coq_nvim",
	event = "VeryLazy",
	dependencies = {
		"ms-jpq/coq.artifacts",
		"ms-jpq/coq.thirdparty",
	},
	build = ":COQdep",
	config = function()
		vim.cmd("COQnow -s")
	end,
}
