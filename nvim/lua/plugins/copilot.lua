return {
	"zbirenbaum/copilot.lua",
	cmd = "Copilot",
	event = "InsertEnter",
	config = function()
		require("copilot").setup({
			auto_refresh = true,
		})
	end,
	build = ":Copilot auth",
}
