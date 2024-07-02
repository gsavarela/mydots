return {
  {
  -- When combined with a set of tmux key bindings, the plugin will allow you
    -- to navigate seamlessly between vim and tmux splits using a consistent
    -- set of hotkeys.
   "christoomey/vim-tmux-navigator",
    lazy=false,
    commit="addb64a772cb4a3ae1f1363583012b2cada2cd66"
  },
 {
    "bash-lsp/bash-language-server",
    ft = {"bash"},
    commit = "23fdaa9cc136338e5073a28fdd33879b2edf2561",
  },
  {
    "hrsh7th/vscode-langservers-extracted",
    ft = {"json"},
    config = function()
      require "configs.jsonls"
    end,
    commit = "0a7a86dd080ec1adfb61732c17ba59492719c001",
  },
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
    commit = "797d1f622a23d4a21bb58218bdf5999a9beac4ef",
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
    commit = "2b3d49e1ed6671669c038b3708dd873a271df234",
  },
  {
    "nvimtools/none-ls.nvim",
    ft = {"python"},
    opts = function()
      return require "configs.null-ls"
    end,
    commit = "37671797d6e5f9bd0ee3ab965ab2e6de251e1930",
  },
  {
  	"williamboman/mason.nvim",
  	opts = {
  		ensure_installed = {
        "black", "pyright", "mypy", "ruff",
  			"lua-language-server", "stylua",
  			"html-lsp", "css-lsp" , "prettier",
        "bash-language-server", "shellcheck",
        "shfmt", "marksman"
        },
    },
    commit = "49ff59aded1047a773670651cfa40e76e63c6377",
  },
  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
       "html", "css"
  		},
  	},
    commit = "3da7deedd8e0a3decd2db32b76ea51513876914e"
  },
}
