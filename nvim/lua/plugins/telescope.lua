return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
		"folke/todo-comments.nvim",
	},
	keys = function()
		local lazy_telescope = function(builtin)
			return function(...)
				require("telescope.builtin")[builtin](...)
			end
		end
		return {
			{ "<leader>fs", lazy_telescope("find_files"), desc = "Fuzzy find files in cwd" },
			{ "<leader>fr", lazy_telescope("oldfiles"), desc = "Fuzzy find recent files" },
			{ "<leader>fg", lazy_telescope("live_grep"), desc = "Fuzzy string in cwd" },
			{ "<leader>b", lazy_telescope("buffers"), desc = "Fuzzy open buffers" },
			{ "<leader>fh", lazy_telescope("help_tags"), desc = "Find help tags" },
			{ "<leader>fs", lazy_telescope("find_files"), desc = "Fuzzy find files in cwd" },
			{ "<leader>fw", lazy_telescope("grep_string"), desc = "Find word in current buffer" },
			{ "<leader>f/", lazy_telescope("current_buffer_fuzzy_find"), desc = "Fuzzy match in current buffer" },
		}
	end,
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")
		local transform_mod = require("telescope.actions.mt").transform_mod
		local trouble = require("trouble")
		local trouble_telescope = require("trouble.sources.telescope")

		-- or create your custom action
		local custom_actions = transform_mod({
			open_trouble_qflist = function(prompt_bufnr)
				trouble.toggle("quickfix")
			end,
		})

		telescope.setup({
			defaults = {
				path_display = { "smart" },
				mappings = {
					i = {
						["<C-q>"] = actions.send_selected_to_qflist + custom_actions.open_trouble_qflist,
						["<C-t>"] = trouble_telescope.open,
						["<C-d>"] = actions.delete_buffer,
					},
					n = {
						["<C-d>"] = actions.delete_buffer,
					},
				},
			},
		})

		telescope.load_extension("fzf")
	end,
}
