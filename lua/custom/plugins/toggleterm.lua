vim.pack.add({
  "https://github.com/akinsho/toggleterm.nvim",
})

-- 2. Execute ToggleTerm setup with floating terminal presets
require("toggleterm").setup({
  size = 20,
  open_mapping = [[<c-\>]], -- Press Ctrl + \ to toggle universally
  hide_numbers = false,
  shade_terminals = true,
  start_in_insert = true,
  insert_mappings = true,
  terminal_mappings = true,
  persist_size = true,
  direction = "float",      -- Enforce default floating layouts
  close_on_exit = true,
  shell = vim.o.shell,
  float_opts = {
    border = "curved",     -- Elegant rounded borders
    winblend = 3,
  },
})

-- 3. Setup Persistent Float Window Mapping (Ctrl + t)
local Terminal = require('toggleterm.terminal').Terminal
local float_term = Terminal:new({ direction = "float", hidden = true })

function _G._float_term_toggle()
  float_term:toggle()
end

-- Keymaps: Binds <C-t> in normal (n) and terminal (t) modes to toggle cleanly
vim.keymap.set({'n', 't'}, '<C-t>', '<cmd>lua _float_term_toggle()<CR>', { silent = true, desc = "Toggle Floating Terminal" })
