return {
  {
    "folke/snacks.nvim",
    keys = {
      { "<leader>lg", function() Snacks.lazygit() end, desc = "Lazygit" },
      { "<C-p>", function() Snacks.picker.smart() end, desc = "Smart Find Files (VS Code style)" },
      { "<C-S-p>", function() Snacks.picker.commands({ layout = { preset = "select_no_preview" } }) end, desc = "Commands" },
      { "<leader>sk", function() Snacks.picker.keymaps({ layout = { preset = "select_no_preview" } }) end, desc = "Keymaps" },
      { "<leader>ss", function() Snacks.picker.lsp_symbols() end, desc = "Symbols" },
    },
    config = function()
      require("snacks").setup({
        picker = {
          enabled = true,
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
