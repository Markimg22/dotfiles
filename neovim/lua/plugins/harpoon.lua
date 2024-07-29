return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local harpoon = require("harpoon")
        local wk = require("which-key")

        harpoon:setup()

        wk.add({
            mode = { "n" },
            { "<leader>h", group = "Harpoon" },
            {
                "<leader>ha",
                function()
                    harpoon:list():add()
                end,
                desc = "Add",
            },
            {
                "<leader>hl",
                function()
                    harpoon.ui:toggle_quick_menu(harpoon:list())
                end,
                desc = "List",
            },
            {
                "<leader>h1",
                function()
                    harpoon:list():select(1)
                end,
                desc = "[1]",
            },
            {
                "<leader>h2",
                function()
                    harpoon:list():select(2)
                end,
                desc = "[2]",
            },
            {
                "<leader>h3",
                function()
                    harpoon:list():select(3)
                end,
                desc = "[3]",
            },
            {
                "<leader>h4",
                function()
                    harpoon:list():select(4)
                end,
                desc = "[4]",
            },
            {
                "<leader>hp",
                function()
                    harpoon:list():prev()
                end,
                desc = "Previous Buffer",
            },
            {
                "<leader>hn",
                function()
                    harpoon:list():next()
                end,
                desc = "Next Buffer",
            },
        })

        -- wk.register({
        --     h = {
        --         name = "Harpoon",
        --         a = {
        --             function()
        --                 harpoon:list():add()
        --             end,
        --             "Add",
        --         },
        --         l = {
        --             function()
        --                 harpoon.ui:toggle_quick_menu(harpoon:list())
        --             end,
        --             "List",
        --         },
        --         h1 = {
        --             function()
        --                 harpoon:list():select(1)
        --             end,
        --             "[1]",
        --         },
        --         h2 = {
        --             function()
        --                 harpoon:list():select(2)
        --             end,
        --             "[2]",
        --         },
        --         h3 = {
        --             function()
        --                 harpoon:list():select(3)
        --             end,
        --             "[3]",
        --         },
        --         h4 = {
        --             function()
        --                 harpoon:list():select(4)
        --             end,
        --             "[4]",
        --         },
        --         p = {
        --             function()
        --                 harpoon:list():prev()
        --             end,
        --             "Previous Buffer",
        --         },
        --         n = {
        --             function()
        --                 harpoon:list():next()
        --             end,
        --             "Next Buffer",
        --         },
        --     },
        -- }, { prefix = "<leader>" })
    end,
}