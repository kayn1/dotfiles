return {
  {
    "jackMort/ChatGPT.nvim",
    keys = {
      {
        "<leader>cc",
        ":ChatGPT<CR>",
        "ChatGPT",
      },
      { "<leader>ce", ":ChatGPTEditWithInstruction<CR>", "Edit with instruction", mode = { "n", "v" } },
      { "<leader>cg", ":ChatGPTRun grammar_correction<CR>", "Grammar Correction", mode = { "n", "v" } },
      { "<leader>ct", ":ChatGPTRun translate<CR>", "Translate", mode = { "n", "v" } },
      { "<leader>ck", ":ChatGPTRun keywords<CR>", "Keywords", mode = { "n", "v" } },
      { "<leader>cd", ":ChatGPTRun docstring<CR>", "Docstring", mode = { "n", "v" } },
      { "<leader>ca", ":ChatGPTRun add_tests<CR>", "Add Tests", mode = { "n", "v" } },
      { "<leader>co", ":ChatGPTRun optimize_code<CR>", "Optimize Code", mode = { "n", "v" } },
      { "<leader>cs", ":ChatGPTRun summarize<CR>", "Summarize", mode = { "n", "v" } },
      { "<leader>cf", ":ChatGPTRun fix_bugs<CR>", "Fix Bugs", mode = { "n", "v" } },
      { "<leader>cx", ":ChatGPTRun explain_code<CR>", "Explain Code", mode = { "n", "v" } },
      { "<leader>cr", ":ChatGPTRun roxygen_edit<CR>", "Roxygen Edit", mode = { "n", "v" } },
      { "<leader>cl", ":ChatGPTRun code_readability_analysis<CR>", "Code Readability Analysis", mode = { "n", "v" } },
    },
    event = "VeryLazy",
    config = function()
      require("chatgpt").setup()
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
  },
}
