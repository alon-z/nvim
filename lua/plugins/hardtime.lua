return {
  {
    "m4xshen/hardtime.nvim",
    dependencies = { "MunifTanjim/nui.nvim" },
    event = "VeryLazy",
    opts = {
      enabled = false,
      disabled_keys = {},
      max_time = 1000,
      hint = true,
      notification = true,
      restriction_mode = "hint",
    },
  },
}
