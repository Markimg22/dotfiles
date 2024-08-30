local servers = { "lua_ls", "tsserver", "html", "prismals", "tailwindcss", "omnisharp", "clangd", "cmake", "pyright" }
local formatters = { "stylua", "prettier", "eslint_d", "csharpier" }

return {
    {
        "williamboman/mason.nvim",
        lazy = false,
        config = function()
            require("mason").setup()
        end,
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
                if server == "omnisharp" then
                    lspconfig.omnisharp.setup({
                        capabilities = capabilities,
                        cmd = {
                            "dotnet",
                            os.getenv("HOME") .. "/omnisharp/OmniSharp.dll",
                            "--languageserver",
                            "--hostPID",
                            tostring(vim.fn.getpid()),
                        },
                        root_dir = lspconfig.util.root_pattern("*.csproj", "*.sln", ".git"),
                        enable_roslyn_analyzers = true,
                        enable_import_completion = true,
                        organize_imports_on_format = true,
                    })
                elseif server == "clangd" then
                    lspconfig.clangd.setup({
                        capabilities = capabilities,
                        cmd = { "clangd", "--background-index" },
                        root_dir = lspconfig.util.root_pattern("compile_commands.json", "compile_flags.txt", ".git"),
                    })
                elseif server == "pyright" then
                    lspconfig.pyright.setup({
                        capabilities = capabilities,
                        settings = {
                            python = {
                                pythonPath = vim.fn.getcwd() .. "/.venv/bin/python",
                                venvPath = vim.fn.getcwd(),
                                venv = ".venv",
                            },
                        },
                    })
                else
                    lspconfig[server].setup({
                        capabilities = capabilities,
                    })
                end
            end

            vim.keymap.set("n", "<leader>lh", vim.lsp.buf.hover, { desc = "[L]sp [H]over" })
            vim.keymap.set("n", "<leader>ld", vim.lsp.buf.definition, { desc = "[L]sp [D]efinition" })
            vim.keymap.set("n", "<leader>lr", vim.lsp.buf.references, { desc = "[L]sp [R]eferences" })
            vim.keymap.set("n", "<leader>lc", vim.lsp.buf.code_action, { desc = "[L]sp [C]ode [A]ction" })
        end,
    },
    {
        "jay-babu/mason-null-ls.nvim",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require("mason-null-ls").setup({
                auto_install = true,
                ensure_installed = formatters,
            })
        end,
    },
}