local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
---@diagnostic disable-next-line: missing-parameter
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
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
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  -- snapshot = "july-24",
  snapshot_path = fn.stdpath "config" .. "/snapshots",
  max_jobs = 50,
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
    prompt_border = "rounded", -- Border style of prompt popups.
  },
}

-- Install your plugins here
return packer.startup(function(use)
  -- Plugin Mangager
  use { "wbthomason/packer.nvim", commit = "00ec5adef58c5ff9a07f11f45903b9dbbaa1b422" } -- Have packer manage itself

  -- Lua Development
  use {"nvim-lua/plenary.nvim", commit = "968a4b9afec0c633bc369662e78f8c5db0eba249"}  -- Useful lua functions used ny lots of plugins
  -- use {"nvim-lua/popup.nvim", commit = ""}
  -- use {"christianchiarulli/lua-dev.nvim", commit = ""}

  -- LSP
  use {"neovim/nvim-lspconfig", commit = "148c99bd09b44cf3605151a06869f6b4d4c24455"} -- enable LSP
  use {"williamboman/nvim-lsp-installer", commit = "e9f13d7acaa60aff91c58b923002228668c8c9e6"} -- simple to use language server installer
  use {"jose-elias-alvarez/null-ls.nvim", commit = "ff40739e5be6581899b43385997e39eecdbf9465"} -- for formatters and linters
  -- use {"b0o/SchemaStore.nvim", commit = ""}
  -- use {"RRethy/vim-illuminate", commit = "c82e6d04f27a41d7fdcad9be0bce5bb59fcb78e5"}

  -- Completion
  use {"hrsh7th/nvim-cmp" , commit = "df6734aa018d6feb4d76ba6bda94b1aeac2b378a"}-- The completion plugin
  use {"hrsh7th/cmp-buffer", commit = "62fc67a2b0205136bc3e312664624ba2ab4a9323"} -- buffer completions
  use {"hrsh7th/cmp-path" , commit = "466b6b8270f7ba89abd59f402c73f63c7331ff6e"}-- path completions
  -- use {"hrsh7th/cmp-cmdline" -- cmdline completions
  use {"saadparwaiz1/cmp_luasnip", commit = "a9de941bcbda508d0a45d28ae366bb3f08db2e36"} -- snippet completions
  use {"hrsh7th/cmp-nvim-lsp", commit = "affe808a5c56b71630f17aa7c38e15c59fd648a8"}
  use {"hrsh7th/cmp-nvim-lua", commit = "d276254e7198ab7d00f117e88e223b4bd8c02d21"}

  -- Snippet
  use {"L3MON4D3/LuaSnip" , commit = "79b2019c68a2ff5ae4d732d50746c901dd45603a"}--snippet engine
  use {"rafamadriz/friendly-snippets" , commit = "d27a83a363e61009278b6598703a763ce9c8e617"}-- a bunch of snippets to use

  -- Syntax/Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    commit = "518e27589c0463af15463c9d675c65e464efc2fe",
    run = ":TSUpdate"
   }
  use "windwp/nvim-ts-autotag"

  -- Marks
  -- use "christianchiarulli/harpoon"
  -- use "MattesGroeger/vim-bookmarks"

  -- Fuzzy Finder/Telescope
  use {"nvim-telescope/telescope.nvim", commit = "b79cd6c88b3d96b0f49cb7d240807cd59b610cd8"}
  -- icons: optional dependency for telescope
  use {"kyazdani42/nvim-web-devicons", commit = "8d2c5337f0a2d0a17de8e751876eeb192b32310e"}
  -- use {"nvim-telescope/telescope-media-files.nvim", commit = ""}
  -- use {"tom-anders/telescope-vim-bookmarks.nvim", commit = ""}

  -- Note Taking
  -- use {"mickael-menu/zk-nvim", commit = ""}

  -- Color
  -- use {"NvChad/nvim-colorizer.lua", commit = ""}
  -- use {"ziontee113/color-picker.nvim", commit = ""}

  -- Colorschemes
  -- requires vim>8.0.0
  -- use {'Mofiqul/dracula.nvim', commit = '26d04c8ced02f02207e7aec1d5730c3a9ebadeeb'}
  use {'richin13/dracula.nvim', commit = '1fc5aa1dc148d3a888568a7925a757b8e60748b8'}
  use {'luisiacc/gruvbox-baby', commit = '8b47d6bfdb704baa3b5735836bd501579897f9f3'}
  use {'shaunsingh/nord.nvim', commit = '78f5f001709b5b321a35dcdc44549ef93185e024'}
  use {'folke/tokyonight.nvim', commit = 'df13e3268a44f142999fa166572fe95a650a0b37'}
  use {'rose-pine/neovim', as='rose-pine', commit = '69dca24ba7f8e74f1e6f0bacbc93481ac4047f2e'} 
  use { 'catppuccin/nvim', as = 'catppuccin', commit='4800750203798fb87d7d0192c3281b5fd3e086dd'}
  use { 'AlphaTechnolog/pywal.nvim', as = 'pywal', commit='d11b673c0e3d6eb8cbee7ea8cf4a8911f6ee24b9' }

  -- Debugging
  use {"mfussenegger/nvim-dap", commit = "014ebd53612cfd42ac8c131e6cec7c194572f21d"}
  use {"rcarriga/nvim-dap-ui", commit = "d76d6594374fb54abf2d94d6a320f3fd6e9bb2f7"}
  use {"ravenxrz/DAPInstall.nvim", commit = "8798b4c36d33723e7bba6ed6e2c202f84bb300de"}

  -- Editing Support
  use {"numToStr/Comment.nvim",
    commit = "2c26a00f32b190390b664e56e32fd5347613b9e2",
    config = function()
      require('Comment').setup()
    end 
  } -- Comment
  use {"windwp/nvim-autopairs", commit = "fa6876f832ea1b71801c4e481d8feca9a36215ec"}
  -- use {"junegunn/vim-slash", commit = ""}
  use {"lukas-reineke/indent-blankline.nvim", commit = "6177a59552e35dfb69e1493fd68194e673dc3ee2"} -- Indent

  -- File Explorer
  use {"kyazdani42/nvim-tree.lua", commit = "bdb6d4a25410da35bbf7ce0dbdaa8d60432bc243"}

  -- Utility
  use {"stevearc/dressing.nvim", commit = ""}
  use {"moll/vim-bbye", commit = "25ef93ac5a87526111f43e5110675032dbcacf56"}             -- Prevent closing windows after closing buffers.
  use {"lewis6991/impatient.nvim", commit = "969f2c5c90457612c09cf2a13fee1adaa986d350"}


  -- Navigation
  use {"akinsho/bufferline.nvim", commit = "c78b3ecf9539a719828bca82fc7ddb9b3ba0c353"}
  -- use {"lalitmee/browse.nvim", commit = ""}      -- Searches hyperlinks from documents opening browsers.
  -- When combined with a set of tmux key bindings, the plugin will allow you to navigate seamlessly between vim and tmux splits using a consistent set of hotkeys.
  use {"christoomey/vim-tmux-navigator", lazy=false, commit="addb64a772cb4a3ae1f1363583012b2cada2cd66"}

  -- Statusline
  use {"nvim-lualine/lualine.nvim", commit = "3362b28f917acc37538b1047f187ff1b5645ecdd"}

  -- Startup
  use {"goolord/alpha-nvim", commit = "ef27a59e5b4d7b1c2fe1950da3fe5b1c5f3b4c94"}

  -- Project
  use {"ahmedkhalf/project.nvim", commit = "541115e762764bc44d7d3bf501b6e367842d3d4f"}


  -- Terminal
  use {"akinsho/toggleterm.nvim", commit = "aaeed9e02167c5e8f00f25156895a6fd95403af8"}

  -- Git
  use {"lewis6991/gitsigns.nvim", commit = "c18e016864c92ecf9775abea1baaa161c28082c3"}


  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)

