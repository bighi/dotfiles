local map = vim.keymap.set

-- Search
map("n", "<leader>?", ":nohl<CR>", { desc = "Clear search highlights" })

-- Edit config files
map("n", "<leader>ev", "<cmd>e ~/.config/nvim/init.lua<CR>", { desc = "Edit init.lua" })
map("n", "<leader>ec", "<cmd>Telehscope <CR>", { desc = "Edit lua configs" })

-- Break current line
map("n", "<CR>", "i<CR><Esc>", { desc = "Insert line break" })

-- window management
map("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
map("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
map("n", "<leader>=", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
map("n", "<leader>sc", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window
map("n", "<leader>q", "<C-w>c")
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

-- Tabs
map("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
map("n", "<leader>tc", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
map("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
map("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab

-- Copy and paste
map("n", "<leader>y", '"+y', { desc = "Copy to system clipboard" })
map("n", "<leader>p", '"+p', { desc = "Paste from system clipboard" })

-- Quickfix
map("n", "[q", "<cmd>cprevious<CR>")
map("n", "]q", "<cmd>cnext<CR>")

-- Delete without overriding clipboard
map("n", "x", '"_x')
map("n", "X", '"_d')

-- Lazy (plugin management)
map("n", "<F12>", "<cmd>Lazy<CR>", { desc = "Open Lazy plugin manager" })

-- Highlight when copying text
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
