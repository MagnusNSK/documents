vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'neovim/nvim-lspconfig'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use "ellisonleao/gruvbox.nvim"
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

  use({
      "epwalsh/obsidian.nvim",
      tag = "*",
      requires = {
          "nvim-lua/plenary.nvim",
      },
      config = function()
          require("obsidian").setup({
              workspaces = {
                  {
                      name = "main",
                      path = "~/obsidian/main",
                  },
              },
              notes_subdir = "5-full-notes",
              new_notes_location = "notes_subdir",
              templates = {
                  folder = "6-note-templates",
                  date_format = "%Y-%m-%d-%a",
                  time_format = "%H:%M",
              },
              disable_frontmatter = true,
          })
      end,
  })


  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

end)

