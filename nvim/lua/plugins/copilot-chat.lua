return {
	"CopilotC-Nvim/CopilotChat.nvim",
	branch = "main",
	dependencies = {
		{ "zbirenbaum/copilot.lua" },
		{ "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
	},
	keys = {
		{ "<leader>cc", ":CopilotChat ", desc = "Open Copilot Chat" },
	},
	build = "make tiktoken",
	opts = {
		debug = true,
	},
}
