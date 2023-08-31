return {
  {
    "leoluz/nvim-dap-go",
    config = true,
    opts = {
      dap_configurations = {
        {
          type = "go",
          name = "Custom Configuration",
          request = "launch",
          program = "${workspaceFolder}/main.go",
        },
      },
    },
  },
}
