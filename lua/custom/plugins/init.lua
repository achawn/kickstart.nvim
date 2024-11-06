-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'tpope/vim-fugitive',
    config = function()
      vim.keymap.set('n', '<leader>g', '<cmd>Git<cr><C-w>o', { desc = 'status' })
    end,
  },
  {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {},
    -- Optional dependencies
    dependencies = { { 'echasnovski/mini.icons', opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
    config = function()
      require('oil').setup()
      vim.keymap.set('n', '<leader>o', '<cmd>Oil<cr>', { desc = '[O]pen Oil' })
    end,
  },
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    requires = { { 'nvim-lua/plenary.nvim' } },
    config = function()
      local hp = require('harpoon').setup {}
      vim.keymap.set('n', '<leader>a', function()
        hp:list():add()
      end, { desc = '[A]dd to Harpoon List' })
      vim.keymap.set('n', '<C-e>', function()
        hp.ui:toggle_quick_menu(hp:list())
      end)
      vim.keymap.set('n', '<C-h>', function()
        hp:list():select(1)
      end)
      vim.keymap.set('n', '<C-t>', function()
        hp:list():select(2)
      end)
      vim.keymap.set('n', '<C-n>', function()
        hp:list():select(3)
      end)
      vim.keymap.set('n', '<C-s>', function()
        hp:list():select(4)
      end)
    end,
  },
}
