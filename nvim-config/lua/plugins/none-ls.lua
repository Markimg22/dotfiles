return {
    "nvimtools/none-ls.nvim",
    config = function()
        require("null-ls").setup()
        vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, {})
    end,
}