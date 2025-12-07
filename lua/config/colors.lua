vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    -- Set floating window/popup colors
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#212121", fg = "#c0c0c0" })
    vim.api.nvim_set_hl(0, "FloatBorder", { bg = "#212121", fg = "#c0c0c0" })
  end,
})