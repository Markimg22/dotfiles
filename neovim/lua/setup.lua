vim.cmd("language en_US")
vim.cmd("syntax on")

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.swapfile = false
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.scrolloff = 8
vim.opt.cmdheight = 2
vim.opt.mouse = "a"
vim.opt.colorcolumn = "150"
vim.opt.signcolumn = "yes"
vim.opt.encoding = "utf-8"
vim.opt.textwidth = 150
vim.opt.formatoptions:append("t")
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.breakindent = true
vim.opt.showbreak = "↪ "