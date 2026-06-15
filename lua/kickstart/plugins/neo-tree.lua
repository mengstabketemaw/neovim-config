-- Nvim-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-tree/nvim-tree.lua

local plugins = {
  { src = 'https://github.com/nvim-tree/nvim-tree.lua', version = vim.version.range '*' },
}

if vim.g.have_nerd_font then
  table.insert(plugins, 'https://github.com/nvim-tree/nvim-web-devicons')
end

vim.pack.add(plugins)

vim.keymap.set('n', '\\', '<Cmd>NvimTreeToggle<CR>', { desc = 'NvimTree toggle', silent = true })

require('nvim-tree').setup {
  disable_netrw = true,
  filters = {
    dotfiles = false,
    git_ignored = false,
  },
  view = {
    width = 30,
  },
  actions = {
    open_file = {
      quit_on_open = true,
    },
  },
}
