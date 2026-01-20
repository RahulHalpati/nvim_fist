return {
  "linux-cultist/venv-selector.nvim",
  dependencies = {
    "neovim/nvim-lspconfig",
    "nvim-telescope/telescope.nvim",
  },
  lazy = false,
  opts = {
    -- Minimal configuration - uses smart defaults
  },
  keys = {
    { "<leader>vs", "<cmd>VenvSelect<cr>", desc = "Select Python virtualenv" },
    { "<leader>vc", "<cmd>VenvSelectCached<cr>", desc = "Select cached virtualenv" },
  },
}

