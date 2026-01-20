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
          split_ratio = 0.4,
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

      -- Custom keymap to open Claude Code in a vertical split (side panel)
      vim.keymap.set("n", "<leader>cp", function()
        local claude = require("claude-code")
        -- Save original position
        local original_position = claude.config.window.position
        -- Temporarily set to vertical split
        claude.config.window.position = "vertical"
        -- Toggle Claude Code
        claude.toggle()
        -- Restore original position for future toggles
        claude.config.window.position = original_position
      end, { desc = "Claude Code (side panel)" })
    end,
  },
}
