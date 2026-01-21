return {
  {
    "coder/claudecode.nvim",
    dependencies = { "folke/snacks.nvim" },
    config = true,
    git_repo_cwd = true,
    keys = {
      { "<C-,>", "<cmd>ClaudeCode<cr>", desc = "Toggle Claude", mode = { "n", "t" } },
      { "<leader>a", nil, desc = "AI/Claude Code" },
      { "<leader>ac", "<cmd>ClaudeCode<cr>", desc = "Toggle Claude" },
      { "<leader>af", "<cmd>ClaudeCodeFocus<cr>", desc = "Focus Claude" },
      { "<leader>cr", "<cmd>ClaudeCode --resume<cr>", desc = "Resume Claude" },
      { "<leader>aC", "<cmd>ClaudeCode --continue<cr>", desc = "Continue Claude" },
      { "<leader>ab", "<cmd>ClaudeCodeAdd %<cr>", desc = "Add current buffer" },
      { "<leader>as", "<cmd>ClaudeCodeSend<cr>", mode = "v", desc = "Send to Claude" },
      {
        "<leader>as",
        "<cmd>ClaudeCodeTreeAdd<cr>",
        desc = "Add file",
        ft = { "NvimTree", "neo-tree", "oil", "minifiles", "netrw" },
      },
      { "<leader>aa", "<cmd>ClaudeCodeDiffAccept<cr>", desc = "Accept diff" },
      { "<leader>ad", "<cmd>ClaudeCodeDiffDeny<cr>", desc = "Deny diff" },
    },
    opts = {
      terminal = {
        split_side = "right",
        split_width_percentage = 0.40,
        snacks_win_opts = {
          position = "right",
          width = 0.40,
          keys = {
            claude_hide = {
              "<C-,>",
              function(self)
                self:hide()
              end,
              mode = "t",
              desc = "Hide Claude",
            },
            nav_left = {
              "<C-h>",
              function()
                vim.cmd("wincmd h")
              end,
              mode = "t",
              desc = "Navigate left",
            },
            nav_right = {
              "<C-l>",
              function()
                vim.cmd("wincmd l")
              end,
              mode = "t",
              desc = "Navigate right",
            },
          },
        },
      },
    },
  },
}
