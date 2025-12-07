-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("config.colors")
require("plugins.comment")
require("plugins.cmake")
require("plugins.csvview")
require("plugins.snacks-fix")
require("plugins.live-preview")
require("plugins.lazygit")
require("plugins.avante")

-- Keymaps
vim.keymap.set("v", "<C-c>", '"+y', { noremap = true, silent = true })
vim.keymap.set("n", "<C-c>", '"+yy', { noremap = true, silent = true })
vim.keymap.set("n", "<C-v>", '"+p', { noremap = true, silent = true })
vim.keymap.set("v", "<C-v>", '"+p', { noremap = true, silent = true })
vim.keymap.set("i", "<C-v>", "<C-r>+", { noremap = true, silent = true })
vim.keymap.set("n", "<C-z>", "u", { noremap = true, silent = true })
vim.keymap.set("i", "<C-z>", "<Esc>ua", { noremap = true, silent = true })
vim.keymap.set("n", "<C-y>", "<C-r>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-y>", "<Esc><C-r>a", { noremap = true, silent = true })
vim.keymap.set("n", "<C-s>", ":w<CR>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>a", { noremap = true, silent = true })
vim.keymap.set("v", "<C-s>", "<Esc>:w<CR>gv", { noremap = true, silent = true })
vim.keymap.set("n", "<C-a>", "ggVG", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<M-a>", "<Esc>", { noremap = true, silent = true })
vim.keymap.set("n", "<S-w>", ":bd<CR>", { noremap = true, silent = true })

-- General Settings
vim.o.number = true
vim.o.relativenumber = false
vim.o.numberwidth = 1 -- Adjust the width of the number column

-- Colorscheme
if vim.fn.has("termguicolors") == 10 then
  vim.o.termguicolors = true
end

-- Only set a Vim colorscheme when NOT running inside VSCode
if not vim.g.vscode then
  -- avoid hard crash if the scheme is missing
  pcall(vim.cmd.colorscheme, "tender")
end

-- Disable Comment Nextline
vim.cmd("autocmd BufEnter * setlocal formatoptions-=cro")

-- Specify System-Wide python installation for Molten.nvim
vim.g.python3_host_prog = "/usr/bin/python"

-- Specific clipboard settings for WSL
if vim.fn.has("wsl") == 1 then
  vim.g.clipboard = {
    name = "WslClipboard",
    copy = {
      ["+"] = "clip.exe",
      ["*"] = "clip.exe",
    },
    paste = {
      ["+"] = "powershell.exe Get-Clipboard",
      ["*"] = "powershell.exe Get-Clipboard",
    },
  }
end
