vim.g.mapleader = " "

vim.keymap.set("n", "<c-j>", ":wincmd j<CR>", { desc = "Move to bottom window" })
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>", { desc = "Move to left window" })
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>", { desc = "Move to right window" })
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>", { desc = "Move to top window" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line to down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line to up" })

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank to system clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Yank line to system clipboard" })

vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down and center" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up and center" })

vim.keymap.set("n", "<leader>/", "<cmd>noh<CR>", { desc = "Clean search highlighting" })

vim.keymap.set("v", "<Tab>", ">gv", { desc = "Ident >" })
vim.keymap.set("v", "<S-Tab>", "<gv", { desc = "Ident <" })