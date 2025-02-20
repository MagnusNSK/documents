vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'neovim/nvim-lspconfig'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use("savq/melange-nvim")
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use {
      'nvimdev/dashboard-nvim',
      event = 'VimEnter',
      config = function()
          local dashboard = require('dashboard')
          dashboard.setup {
              theme = 'hyper',
              config = {
                  header = {
                      "                              ",
                      "    _   _     ___    _  __    ",
                      "   | \\ | |   / __|  | |/ /    ",
                      "   |  \\| |   \\__ \\  | ' <     ",
                      "   | |\\  |   |__) | | . \\     ",
                      "   |_| \\_|  |____/  |_|\\_\\    ",
                      "                              ",
                  },
                  shortcut = {
                      { desc = ' Find File', group = 'Label', action = 'Telescope find_files', key = 'f' },
                      { desc = ' Obidian Note', group = '@property', action = 'ObsidianNew', key = 'u' },
                      { desc = ' Obsidian Template', group = '@property', action = 'ObsidianNewFromTemplate', key = 'n' },
                      { desc = ' Recent Files', group = 'DiagnosticHint', action = 'Telescope oldfiles', key = 'r' },
                      { desc = ' Packer File', group = 'Number', action = 'e ~/.config/nvim/lua/yukun/packer.lua', key = 'c' },
                  },
                  footer = {" "}
              }
          }
      end,
      requires = {'nvim-tree/nvim-web-devicons'}
  }

end)

