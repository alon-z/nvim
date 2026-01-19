return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",       -- load on Copilot commands
    event = "InsertEnter", -- optional lazy load
    config = function()
      require("copilot").setup({
        suggestion = {
          enabled = true,
          auto_trigger = true,
          keymap = {
            accept = "<Tab>",
          },
        },
      })
    end,
  },
}
