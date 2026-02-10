return {
  {
    "folke/snacks.nvim",
    keys = {
      { "<leader>lg", function() Snacks.lazygit() end, desc = "Lazygit" },
      { "<C-p>", function() Snacks.picker.smart() end, desc = "Smart Find Files (VS Code style)" },
      { "<C-S-p>", function() Snacks.picker.commands({ layout = { preset = "select_no_preview" } }) end, desc = "Commands" },
      { "<leader>sk", function() Snacks.picker.keymaps({ layout = { preset = "select_no_preview" } }) end, desc = "Keymaps" },
      { "<leader>ss", function() Snacks.picker.lsp_symbols() end, desc = "Document Symbols" },
      { "<leader>sS", function() Snacks.picker.lsp_workspace_symbols() end, desc = "Workspace Symbols" },
      { "<leader>sr", function() Snacks.picker.lsp_references() end, desc = "References" },
      { "<leader>si", function() Snacks.picker.lsp_implementations() end, desc = "Implementations" },
      { "<C-S-f>", function() Snacks.picker.grep() end, desc = "Search in Files (VS Code style)" },
      { "<leader>sg", function() Snacks.picker.grep() end, desc = "Grep (Search in Files)" },
      { "<leader>sw", function() Snacks.picker.grep_word() end, desc = "Search Word Under Cursor" },
    },
    config = function()
      require("snacks").setup({
        picker = {
          enabled = true,
          sources = {
            grep = {
              hidden = true,
              ignored = false,
              exclude = { "node_modules", ".git", "dist", "build" },
            },
            files = {
              hidden = true,
              ignored = false,
              exclude = { "node_modules", ".git", "dist", "build" },
            },
          },
          layouts = {
            telescope = {
              reverse = true,
              layout = {
                box = "vertical",
                backdrop = false,
                width = 0.5,
                height = 0.4,
                { win = "input", zindex = 10, border = "rounded" },
                { win = "list", zindex = 10, border = "rounded" },
                { win = "preview", zindex = 10, border = "rounded" },
              }
            },
            select_no_preview = {
              hidden = { "preview" },
              layout = {
                backdrop = false,
                width = 0.5,
                min_width = 80,
                max_width = 100,
                height = 0.4,
                min_height = 2,
                box = "vertical",
                border = true,
                title = "{title}",
                title_pos = "center",
                { win = "input", height = 1, border = "bottom" },
                { win = "list", border = "none" },
              }
            }
          }
        }
      })
    end,
  },
}
