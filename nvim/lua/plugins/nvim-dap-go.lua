return {
  {
    "leoluz/nvim-dap-go",
    config = true,
    keys = {
      {
        "<leader>df",
        function()
          require("dap-go").debug_test()
        end,
        desc = "Debug Test Under Cursor",
        mode = "n",
      },
    },
  },
}
