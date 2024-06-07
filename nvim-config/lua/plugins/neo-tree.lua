return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = function()
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        vim.keymap.set("n", "<leader>nt", ":Neotree toggle<CR>", {})
        vim.keymap.set("n", "<leader>nb", ":Neotree buffers reveal float<CR>", {})

        require("neo-tree").setup({
            filesystem = {
                filtered_items = {
                    hide_dotfiles = false,
                    hide_gitignored = false,
                },
            },
        })
    end,
}