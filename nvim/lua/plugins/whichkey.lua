return {
  "folke/which-key.nvim",
  optional = true,
  opts = {
    spec = {
      { "<leader>t", group = "test" },
      { "<leader>fC", desc = "Copy relative path" },
      { "<leader>fA", desc = "Copy absolute path" },
      { "<leader>fF", desc = "Copy filename" },
    },
  },
}
