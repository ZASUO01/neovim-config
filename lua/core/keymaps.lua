vim.g.mapleader = " "

local keymap = vim.keymap

-- basic
keymap.set("i", "jk", "<ESC>", { desc = "Exit Insert Mode With jk." })
keymap.set("n", "<leader>nh", "nohl", { desc = "Clear Search Highlights." })

-- window split
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split Window Vertically." })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split Window Horizontally." })
keymap.set("n", "<leader>se", "<C-w>", { desc = "Make Splits Equal Size." })
keymap.set("n", "<leader>sx", "<cmd>close<cr>", { desc = "Close The Current Window Split." })

-- tabs
keymap.set("n", "<leader>to", "<cmd>tabnew<cr>", { desc = "Open A New Tab." })
keymap.set("n", "<leader>tx", "<cmd>tabclose<cr>", { desc = "Close The Current Tab." })
keymap.set("n", "<leader>tn", "<cmd>tabn<cr>", { desc = "Go To The Next Tab." })
keymap.set("n", "<leader>tp", "<cmd>tabp<cr>", { desc = "Go To The Previous Tab." })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<cr>", { desc = "Open The Current Buffer In A New Tab." })
