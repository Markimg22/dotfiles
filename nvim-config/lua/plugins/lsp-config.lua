local servers = { "lua_ls", "tsserver", "html", "prismals" }
local formatters = { "stylua", "prettier" }

return {
    {
        "williamboman/mason.nvim",
        lazy = false,
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        opts = {
            auto_install = true,
            ensure_installed = servers,
        },
    },
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            local lspconfig = require("lspconfig")

            for _, server in ipairs(servers) do
                lspconfig[server].setup({
                    capabilities = capabilities
                })
            end

            vim.keymap.set("n", "<leader>lh", vim.lsp.buf.hover, { desc = "[L]sp [H]over" })
            vim.keymap.set("n", "<leader>ld", vim.lsp.buf.definition, { desc = "[L]sp [D]efinition" })
            vim.keymap.set("n", "<leader>lr", vim.lsp.buf.references, { desc = "[L]sp [R]eferences" })
            vim.keymap.set("n", "<leader>lca", vim.lsp.buf.code_action, { desc = "[L]sp [C]ode [A]ction" })
        end,
    },
    {
        "jay-babu/mason-null-ls.nvim",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require("mason-null-ls").setup({
                ensure_installed = formatters
            })
        end
    }
}