return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- Add additional languages to ensure_installed
      vim.list_extend(opts.ensure_installed, {
        "bash",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
        "haskell", -- Added Haskell
        "prolog", -- Added Prolog
        "c", -- Added C
        "cpp", -- Added C++
      })

      -- Enable syntax highlighting for these languages
      opts.highlight = opts.highlight or {}
      opts.highlight.enable = true -- Enable Treesitter highlighting
    end,
  },
}