return {
    "nvimtools/none-ls.nvim",
    dependencies = {
        "nvimtools/none-ls-extras.nvim",
    },
    config = function()
        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                require("none-ls.diagnostics.eslint_d"),
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.prettier,
                null_ls.builtins.formatting.csharpier,
                -- adicionar aqui outros formatadores instalados com o LSP
            },
            on_attach = function(clientBf, bufnr)
                if clientBf.supports_method("textDocument/formatting") then
                    -- Cria um autocmd que formata o buffer antes de salvar
                    vim.api.nvim_create_autocmd("BufWritePre", {
                        buffer = bufnr,
                        callback = function()
                            vim.lsp.buf.format({
                                filter = function(client)
                                    return client.name == "null-ls"
                                end,
                                bufnr = bufnr,
                            })
                        end,
                    })
                end
            end,
        })

        -- vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "Formatter" })

        vim.keymap.set("n", "<leader>f", function()
            vim.lsp.buf.format({
                filter = function(client)
                    return client.name == "null-ls"
                end,
            })
        end, { desc = "Formatter" })
    end,
}