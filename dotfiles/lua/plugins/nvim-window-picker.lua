return {
  {
    "s1n7ax/nvim-window-picker",
    event = { "VeryLazy" },
    opts = {
      highlights = {
        statusline = {
          focused = {
            fg = "#ff79c6",
            bg = "#f1fa8c",
            bold = true,
          },
          unfocused = {
            fg = "#ff5555",
            bg = "#8be9fd",
            bold = true,
          },
        },
        winbar = {
          unfocused = {
            fg = "#ff79c6",
            bg = "#bd93f9",
          },
        },
      },
    },
    config = function(_, opts)
      require("window-picker").setup(opts)
    end,
  },
}
