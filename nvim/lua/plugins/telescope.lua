return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
    "folke/todo-comments.nvim",
  },
  keys = {
    { "<leader>fs", "<cmd>Telescope find_files<cr>", desc = "Fuzzy find files in cwd" },
    { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Fuzzy find recent files" },
    { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Find string in cwd" },
    { "<leader>b", "<cmd>Telescope buffers<CR>", desc = "Find open buffers" },
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")
    -- local trouble = require("trouble")
    -- local trouble_telescope = require("trouble.sources.telescope")

    telescope.setup({
      defaults = {
        path_display = { "smart" },
        mappings = {
          i = {
            -- ["<C-q>"] = actions.send_selected_to_qflist + custom_actions.open_trouble_qflist,
            -- ["<C-t>"] = trouble_telescope.open,
          },
        },
      },
    })

    telescope.load_extension("fzf")
  end,
}
