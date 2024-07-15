return {
    {
        "tpope/vim-fugitive",
    },
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup()

            vim.keymap.set("n", "<leader>gp", "<cmd>Gitsigns preview_hunk<CR>", { desc = "[G]itSigns [P]review Hunk" })
            vim.keymap.set(
                "n",
                "<leader>gt",
                "<cmd>Gitsigns toggle_current_line_blame<CR>",
                { desc = "[G]itSigns [T]oggle Current Line Blame" }
            )
        end,
    },
}