return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "canary",
    dependencies = {
      { "zbirenbaum/copilot.lua" },
      { "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
    },
    event = "VeryLazy",
    config = function()
      require("CopilotChat").setup()
    end,
    keys = {
      { "<leader>cce", "<cmd>CopilotChatExplain<cr>", desc = "CopilotChat - Explain code" },
      { "<leader>ccr", "<cmd>CopilotChatReview<cr>", desc = "CopilotChat - Review code" },
      { "<leader>ccf", "<cmd>CopilotChatFix<cr>", desc = "CopilotChat - Fix" },
      { "<leader>cco", "<cmd>CopilotChatOptimize<cr>", desc = "CopilotChat - Optimize" },
      { "<leader>ccd", "<cmd>CopilotChatDocs<cr>", desc = "CopilotChat - Add Documentation" },
      { "<leader>cct", "<cmd>CopilotChatTests<cr>", desc = "CopilotChat - Generate tests" },
      { "<leader>ccD", "<cmd>CopilotChatFixDiagnostic<cr>", desc = "CopilotChat - diagnostic issue in file" },
      { "<leader>ccc", "<cmd>CopilotChatCommit<cr>", desc = "CopilotChat - Commit message" },
      { "<leader>ccs", "<cmd>CopilotChatCommitStaged<cr>", desc = "CopilotChat - Commit message" },
      { "<leader>ccT", "<cmd>CopilotChatToggle<cr>", desc = "Toggle Copilot Chat" },
    },
  },
}
