local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    install_path,
  }
  print 'Installing packer close and reopen Neovim...'
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, 'packer')
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require('packer.util').float { border = 'rounded' }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  -- Packer utilities packages
  use 'wbthomason/packer.nvim' -- Have packer manage itself
  use 'nvim-lua/popup.nvim' -- An implementation of the Popup API from vim in Neovim
  use 'nvim-lua/plenary.nvim' -- Useful lua functions used ny lots of plugins

  -- Colorschemes 
  use { 'ellisonleao/gruvbox.nvim' }
  use {'luisiacc/gruvbox-baby'}

  -- Code developer plugins
  -- use 'tpope/fugitive'
  -- Completion plugins
  use 'hrsh7th/nvim-cmp' -- The completion plugin
  use 'hrsh7th/cmp-buffer' -- Buffer completion
  use 'hrsh7th/cmp-path' -- Path completion
  use 'hrsh7th/cmp-cmdline' -- Cmdline completion
  use 'saadparwaiz1/cmp_luasnip' -- Snippet completion
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-nvim-lua'

  -- Snippets
  use 'L3MON4D3/LuaSnip' --snippet engine 
  use 'rafamadriz/friendly-snippets' -- a bunch of snippets to use.

  -- LSP
  use 'neovim/nvim-lspconfig' -- enable LSP
  use 'williamboman/nvim-lsp-installer' -- simple to use language server installer
  use 'jose-elias-alvarez/null-ls.nvim' -- for formatters and linters

  -- Telescope
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-media-files.nvim'

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
  }
  use 'p00f/nvim-ts-rainbow'
  -- use 'nvim-treesitter/playground'

  use 'windwp/nvim-autopairs'
  --
   -- Comments
  use 'numToStr/Comment.nvim' -- Easily comment stuff
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  --
  -- Git
  use 'lewis6991/gitsigns.nvim'

  -- Tree view
  use 'kyazdani42/nvim-web-devicons'
  use 'kyazdani42/nvim-tree.lua'

  -- bufferline: tabs
  use 'akinsho/bufferline.nvim'
  use 'moll/vim-bbye'

  -- statusline
  use 'nvim-lualine/lualine.nvim'

  -- toggleterm
  use 'akinsho/toggleterm.nvim'

  -- which key
  use 'folke/which-key.nvim'
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require('packer').sync()
  end
end)

