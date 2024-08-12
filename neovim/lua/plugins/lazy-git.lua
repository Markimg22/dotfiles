-- return {
--     {
--         "tpope/vim-fugitive",
--     },
--     {
--         "lewis6991/gitsigns.nvim",
--         config = function()
--             require("gitsigns").setup()
--
--             local wk = require("which-key")
--
--             wk.add({
--                 mode = { "n", "v" },
--                 { "<leader>g", group = "Gitsigns" },
--                 { "<leader>gs", "<cmd>lua require('gitsigns').stage_hunk()<cr>", desc = "Stage Hunk" },
--                 { "<leader>gu", "<cmd>lua require('gitsigns').undo_stage_hunk()<cr>", desc = "Undo Stage Hunk" },
--                 { "<leader>gr", "<cmd>lua require('gitsigns').reset_hunk()<cr>", desc = "Reset Hunk" },
--                 { "<leader>gp", "<cmd>lua require('gitsigns').preview_hunk()<cr>", desc = "Preview Hunk" },
--                 { "<leader>gb", "<cmd>lua require('gitsigns').blame_line()<cr>", desc = "Blame Line" },
--                 { "<leader>gf", "<cmd>lua require('gitsigns').diffthis()<cr>", desc = "Diff This" },
--                 { "<leader>gn", "<cmd>lua require('gitsigns').next_hunk()<cr>", desc = "Next Hunk" },
--             })
--
--             -- wk.register({
--             --     g = {
--             --         name = "Gitsigns",
--             --         s = { "<cmd>lua require('gitsigns').stage_hunk()<cr>", "Stage Hunk" },
--             --         u = { "<cmd>lua require('gitsigns').undo_stage_hunk()<cr>", "Undo Stage Hunk" },
--             --         r = { "<cmd>lua require('gitsigns').reset_hunk()<cr>", "Reset Hunk" },
--             --         p = { "<cmd>lua require('gitsigns').preview_hunk()<cr>", "Preview Hunk" },
--             --         b = { "<cmd>lua require('gitsigns').blame_line()<cr>", "Blame Line" },
--             --         f = { "<cmd>lua require('gitsigns').diffthis('~1')<cr>", "Diff This" },
--             --         n = { "<cmd>lua require('gitsigns').next_hunk()<cr>", "Blame Line" },
--             --     },
--             -- }, { prefix = "<leader>" })
--
--             -- vim.keymap.set("n", "<leader>gp", "<cmd>Gitsigns preview_hunk<CR>", { desc = "[G]itSigns [P]review Hunk" })
--             -- vim.keymap.set(
--             --     "n",
--             --     "<leader>gt",
--             --     "<cmd>Gitsigns toggle_current_line_blame<CR>",
--             --     { desc = "[G]itSigns [T]oggle Current Line Blame" }
--             -- )
--         end,
--     },
-- }
return {
    "kdheepak/lazygit.nvim",
    cmd = {
        "LazyGit",
        "LazyGitConfig",
        "LazyGitCurrentFile",
        "LazyGitFilter",
        "LazyGitFilterCurrentFile",
    },
    -- optional for floating window border decoration
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    -- setting the keybinding for LazyGit with 'keys' is recommended in
    -- order to load the plugin when the command is run for the first time
    keys = {
        { "<leader>g", "<cmd>LazyGit<CR>", desc = "LazyGit" },
    },
}