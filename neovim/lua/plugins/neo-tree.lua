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

        local wk = require("which-key")

        wk.add({
            mode = { "n", "v" },
            { "<leader>n", group = "Neotree" },
            { "<leader>nt", ":Neotree toggle<CR>", desc = "Toggle" },
            { "<leader>nb", ":Neotree buffers reveal float<CR>", desc = "Buffers reveal float" },
        })

        -- wk.register({
        --     n = {
        --         name = "Neotree",
        --         t = {
        --             ":Neotree toggle<CR>",
        --             "Toggle",
        --         },
        --         b = {
        --             ":Neotree buffers reveal float<CR>",
        --             "Buffers reveal float",
        --         },
        --     },
        -- }, { prefix = "<leader>" })

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