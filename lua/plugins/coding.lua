return {

  -- scopes
  {
    "tiagovla/scope.nvim",
    event = "VeryLazy",
    config = true,
  },

  -- treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "comment",
        "diff",
        "dockerfile",
        "dot",
        "git_rebase",
        "gitattributes",
        "gitcommit",
        "gitignore",
        "graphql",
        "hcl",
        "http",
        "jq",
        "julia",
        "lua",
        "make",
        "rust",
        "markdown",
        "markdown_inline",
        "mermaid",
        "python",
        "regex",
        "sql",
        "vim",
        "yaml",
      },
    },
  },
}
