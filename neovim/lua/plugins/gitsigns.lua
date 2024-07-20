return {
    {
        "tpope/vim-fugitive",
    },
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup()

            local wk = require("which-key")

            wk.register({
                g = {
                    name = "Gitsigns",
                    s = { "<cmd>lua require('gitsigns').stage_hunk()<cr>", "Stage Hunk" },
                    u = { "<cmd>lua require('gitsigns').undo_stage_hunk()<cr>", "Undo Stage Hunk" },
                    r = { "<cmd>lua require('gitsigns').reset_hunk()<cr>", "Reset Hunk" },
                    p = { "<cmd>lua require('gitsigns').preview_hunk()<cr>", "Preview Hunk" },
                    b = { "<cmd>lua require('gitsigns').blame_line()<cr>", "Blame Line" },
                    f = { "<cmd>lua require('gitsigns').diffthis('~1')<cr>", "Diff This" },
                    n = { "<cmd>lua require('gitsigns').next_hunk()<cr>", "Blame Line" },
                },
            }, { prefix = "<leader>" })

            -- vim.keymap.set("n", "<leader>gp", "<cmd>Gitsigns preview_hunk<CR>", { desc = "[G]itSigns [P]review Hunk" })
            -- vim.keymap.set(
            --     "n",
            --     "<leader>gt",
            --     "<cmd>Gitsigns toggle_current_line_blame<CR>",
            --     { desc = "[G]itSigns [T]oggle Current Line Blame" }
            -- )
        end,
    },
}