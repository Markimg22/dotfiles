return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local harpoon = require("harpoon")
        local wk = require("which-key")

        harpoon:setup()

        wk.register({
            h = {
                name = "Harpoon",
                a = {
                    function()
                        harpoon:list():add()
                    end,
                    "Add",
                },
                l = {
                    function()
                        harpoon.ui:toggle_quick_menu(harpoon:list())
                    end,
                    "List",
                },
                h1 = {
                    function()
                        harpoon:list():select(1)
                    end,
                    "[1]",
                },
                h2 = {
                    function()
                        harpoon:list():select(2)
                    end,
                    "[2]",
                },
                h3 = {
                    function()
                        harpoon:list():select(3)
                    end,
                    "[3]",
                },
                h4 = {
                    function()
                        harpoon:list():select(4)
                    end,
                    "[4]",
                },
                p = {
                    function()
                        harpoon:list():prev()
                    end,
                    "Previous Buffer",
                },
                n = {
                    function()
                        harpoon:list():next()
                    end,
                    "Next Buffer",
                },
            },
        }, { prefix = "<leader>" })
    end,
}