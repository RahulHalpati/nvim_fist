vim.g.mapleader = " " -- created new leader

local keymap = vim.keymap -- this var for kemaps glob

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
keymap.set("n", "<leader>+", "<C-a>", { desc = "increment the number by one" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "subtract the number by one" })
keymap.set("n", "<C-a>", "ggVG", { desc = "select all" })

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) -- save the code as we save in vs code ctrl+s
keymap.set("i", "<C-s>", "<cmd>w<CR> | <cmd>SessionSave<CR>", { desc = "Open current buffer in new tab" }) -- save the code as we save the code in vs code Ctrl+s and save the sessions at same time
keymap.set("n", "<C-s>", "<cmd>w<CR> | <cmd>SessionSave<CR>", { desc = "Open current buffer in new tab" }) -- save the code as we save the code in vs code Ctrl+s save the sessions as well
