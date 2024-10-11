return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        -- Use Flake8 for Python diagnostics
        -- null_ls.builtins.diagnostics.flake8.with({
        --   extra_args = { "--max-line-length", "120" },
        -- }),
        
        -- Black for Python formatting
        null_ls.builtins.formatting.black.with({
          extra_args = { "--line-length", "120" },
        }),

        -- Prettier for web-related filetypes
        null_ls.builtins.formatting.prettier.with({
          filetypes = { "javascript", "typescript", "vue", "json", "html", "css", "markdown" },
        }),

        -- Stylua for Lua formatting
        null_ls.builtins.formatting.stylua.with({
          extra_args = { "--indent-type", "Spaces", "--indent-width", "2" },
        }),
      },
    })

    -- Autoformat on save for specified filetypes
    vim.cmd([[
      augroup FormatAutogroup
        autocmd!
        autocmd BufWritePost *.js,*.ts,*.vue,*.json,*.html,*.css,*.md,*.lua,*.py lua vim.lsp.buf.format({ async = true })
      augroup END
    ]])
  end,
  requires = { "nvim-lua/plenary.nvim" },
}
