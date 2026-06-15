-- Nvim-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-tree/nvim-tree.lua

local plugins = {
  { src = 'https://github.com/nvim-tree/nvim-tree.lua', version = vim.version.range '*' },
}

if vim.g.have_nerd_font then table.insert(plugins, 'https://github.com/nvim-tree/nvim-web-devicons') end

vim.pack.add(plugins)

vim.keymap.set('n', '\\', '<Cmd>NvimTreeToggle<CR>', { desc = 'NvimTree toggle', silent = true })

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

require("nvim-tree").setup()

