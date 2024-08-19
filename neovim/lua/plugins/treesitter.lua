return {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
        "nvim-treesitter/nvim-treesitter-context",
    },
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = {
                "c",
                "lua",
                "javascript",
                "html",
                "prisma",
            },
            auto_install = true,
            sync_install = true,
            highlight = { enable = true },
            indent = { enable = true },
        })

        require("treesitter-context").setup({
            enable = true,
            max_lines = 0,
            trim_scope = "outer",
            mode = "topline",
            separator = "-",
            zindex = 20,
        })
    end,
}