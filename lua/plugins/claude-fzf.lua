return {
  {
    "ibhagwan/fzf-lua",
    lazy = true,
    cmd = "FzfLua",
  },
  {
    "pittcat/claude-fzf.nvim",
    dependencies = {
      "ibhagwan/fzf-lua",
      "coder/claudecode.nvim",
    },
    cmd = {
      "ClaudeFzf",
      "ClaudeFzfFiles",
      "ClaudeFzfGrep",
      "ClaudeFzfBuffers",
      "ClaudeFzfGitFiles",
      "ClaudeFzfDirectory",
      "ClaudeFzfHealth",
    },
    keys = {
      { "<leader>aff", "<cmd>ClaudeFzfFiles<cr>", desc = "Claude: Add files" },
      { "<leader>afg", "<cmd>ClaudeFzfGrep<cr>", desc = "Claude: Search and add" },
      { "<leader>afb", "<cmd>ClaudeFzfBuffers<cr>", desc = "Claude: Add buffers" },
      { "<leader>afG", "<cmd>ClaudeFzfGitFiles<cr>", desc = "Claude: Add Git files" },
      { "<leader>afd", "<cmd>ClaudeFzfDirectory<cr>", desc = "Claude: Add directory files" },
    },
init = function()
      -- Suppress Chinese help file encoding warning
      vim.opt.helplang = "en"
    end,
    opts = {
      auto_context = true,
      batch_size = 10,
      keymaps = {
        files = false,
        grep = false,
        buffers = false,
        git_files = false,
        directory_files = false,
      },
    },
  },
}
