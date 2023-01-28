return {

  -- uncomment and add lsp servers with their config to servers below
  {
    "nvim-neotest/neotest",
    event = "VeryLazy",
    dependencies = {
      { "rouge8/neotest-rust" },
      { "nvim-lua/plenary.nvim" },
      { "nvim-treesitter/nvim-treesitter" },
      { "antoinemadec/FixCursorHold.nvim" },
    },
    config = function()
      require("neotest").setup({
        adapters = {
          require("neotest-rust"),
        },
      })
    end,
  },
}
