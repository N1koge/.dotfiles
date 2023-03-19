require("packer").startup(function(use)
  -- packer itself (and basics)
  use 'wbthomason/packer.nvim'
  use 'nvim-lua/plenary.nvim'

  -- color scheme
  use "EdenEast/nightfox.nvim"
  -- workspace
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly', -- optional, updated every week. (see issue #1193)
    config = function() require("nvim-tree").setup {} end
  }
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'kevinhwang91/nvim-bqf'
  use {
    'nvim-lualine/lualine.nvim',
    requires = {
      'nvim-tree/nvim-web-devicons',
    }
  }
  use {
    'akinsho/toggleterm.nvim',
    tag = '*',
  }
  use 'stevearc/dressing.nvim'
  use 'MunifTanjim/nui.nvim'
  use {
    'folke/noice.nvim',
    requires = {
      'rcarriga/nvim-notify'
    }
  }
  -- lsp
  use({
    "jose-elias-alvarez/null-ls.nvim",
    requires = { "nvim-lua/plenary.nvim" }
  })

  use({
    "L3MON4D3/LuaSnip",
    tag = "v<CurrentMajor>.*",
    run = "make install"
  })
  use 'saadparwaiz1/cmp_luasnip'

  use "rafamadriz/friendly-snippets"

  use "ray-x/lsp_signature.nvim"
  use {
    "aznhe21/actions-preview.nvim",
  }
  use {
    'kosayoda/nvim-lightbulb',
    requires = 'antoinemadec/FixCursorHold.nvim'
  }
  -- editor
  use 'lukas-reineke/indent-blankline.nvim'
  use 'chentoast/marks.nvim'

  use { 'numToStr/Comment.nvim' }
  use 'petertriho/nvim-scrollbar'
  use {
    'phaazon/hop.nvim',
    branch = 'v2',
  }
  -- completion
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  -- LSP
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'neovim/nvim-lspconfig'

  -- treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- git
  use 'kdheepak/lazygit.nvim'
end)
