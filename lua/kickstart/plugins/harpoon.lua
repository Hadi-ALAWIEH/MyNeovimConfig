-- return {
--   'ThePrimeagen/harpoon',
--   branch = 'harpoon2', -- use v2 (recommended)
--   dependencies = { 'nvim-lua/plenary.nvim' },
--   config = function()
--     local harpoon = require 'harpoon'
--
--     harpoon:setup()
--
--     -- optional keybindings (feel free to customize)
--     vim.keymap.set('n', '<leader>ha', function()
--       harpoon:list():append()
--     end, { desc = 'Harpoon [A]dd file' })
--     vim.keymap.set('n', '<leader>o', function()
--       harpoon.ui:toggle_quick_menu(harpoon:list())
--     end, { desc = 'Harpoon menu' })
--     vim.keymap.set('n', '<leader>j', function()
--       harpoon:list():select(1)
--     end)
--     vim.keymap.set('n', '<leader>k', function()
--       harpoon:list():select(2)
--     end)
--     vim.keymap.set('n', '<leader>l', function()
--       harpoon:list():select(3)
--     end)
--     vim.keymap.set('n', '<leader>;', function()
--       harpoon:list():select(4)
--     end)
--   end,
-- }

return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2', -- use v2 (recommended)
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'

    harpoon:setup()

    -- optional keybindings (feel free to customize)
    vim.keymap.set('n', '<leader>ha', function()
      harpoon:list():append()
    end, { desc = 'Harpoon [A]dd file' })
    vim.keymap.set('n', '<leader>o', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'Harpoon menu' })
    vim.keymap.set('n', '<C-h>', function()
      harpoon:list():select(1)
    end)
    vim.keymap.set('n', '<C-j>', function()
      harpoon:list():select(2)
    end)
    vim.keymap.set('n', '<C-k>', function()
      harpoon:list():select(3)
    end)
    vim.keymap.set('n', '<C-l>', function()
      harpoon:list():select(4)
    end)
  end,
}
