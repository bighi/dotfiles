return {
	"nvim-tree/nvim-tree.lua",
	dependencies = "nvim-tree/nvim-web-devicons",
	keys = {
		{ "<leader>ff", "<cmd>NvimTreeToggle .<CR>", desc = "Toggle file explorer" },
		{ "<leader>f0", "<cmd>NvimTreeFindFile<CR>", desc = "Find current file in nvim-tree" },
		{ "<leader>ep", "<cmd>NvimTreeToggle ~/.config/nvim/lua/plugins/<CR>", desc = "Open plugins folder" },
		{ "<leader>ec", "<cmd>NvimTreeToggle ~/.config/nvim/lua/config/<CR>", desc = "Open config folder" },
	},
	config = function()
		local nvimtree = require("nvim-tree")

		-- recommended settings from nvim-tree documentation
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		nvimtree.setup({
			view = {
				width = 55,
				relativenumber = true,
			},
			-- change folder arrow icons
			renderer = {
				indent_markers = {
					enable = true,
				},
				icons = {
					glyphs = {
						folder = {
							arrow_closed = "", -- arrow when folder is closed
							arrow_open = "", -- arrow when folder is open
						},
					},
				},
			},
			-- disable window_picker for
			-- explorer to work well with
			-- window splits
			actions = {
				open_file = {
					quit_on_open = true,
					window_picker = {
						enable = false,
					},
				},
			},
			update_focused_file = {
				enable = true,
			},
			filters = {
				custom = { ".DS_Store" },
			},
			git = {
				ignore = false,
			},
		})
	end,
}
