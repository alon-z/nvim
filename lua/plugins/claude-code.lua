return {
  {
    "greggh/claude-code.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("claude-code").setup({
        window = {
          position = "float",
          float = {
            width = "85%",
            height = "85%",
            row = "center",
            col = "center",
            relative = "editor",
            border = "rounded",
          },
        },
        keymaps = {
          toggle = {
            variants = {
              resume = "<leader>cr",
            },
          },
        },
      })
    end,
  },
}
