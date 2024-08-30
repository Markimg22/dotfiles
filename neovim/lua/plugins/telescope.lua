return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.6",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        require("telescope").setup({})

        local builtin = require("telescope.builtin")

        vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "[F]ind [F]iles" })
        vim.keymap.set("n", "<leader>lg", builtin.live_grep, { desc = "[L]ive [G]rep" })
        vim.keymap.set("n", "<leader>of", builtin.oldfiles, { desc = "[O]ld [F]iles" })
        vim.keymap.set("n", "<leader>gf", builtin.git_files, { desc = "[G]it [F]iles" })
    end,
}