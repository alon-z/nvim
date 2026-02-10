return {
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    opts = {
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    },
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    opts = {
      ensure_installed = {
        "lua_ls",
        "ts_ls",
        "pyright",
        "gopls",
        "rust_analyzer",
        "jsonls",
        "yamlls",
        "html",
        "cssls",
        "bashls",
      },
      automatic_installation = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      -- Server-specific configurations using vim.lsp.config (Neovim 0.11+)
      vim.lsp.config("lua_ls", {
        settings = {
          Lua = {
            diagnostics = { globals = { "vim", "Snacks" } },
            workspace = { checkThirdParty = false },
            telemetry = { enable = false },
          },
        },
      })

      -- Enable all servers
      vim.lsp.enable({
        "lua_ls",
        "ts_ls",
        "pyright",
        "gopls",
        "rust_analyzer",
        "jsonls",
        "yamlls",
        "html",
        "cssls",
        "bashls",
      })

      -- Custom keybindings via LspAttach (supplements Neovim 0.11+ defaults)
      -- Defaults already include: K (hover), gra (code action), grn (rename),
      -- grr (references), gri (implementation), grt (type def), gO (symbols)
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local map = function(keys, func, desc)
            vim.keymap.set("n", keys, func, { buffer = args.buf, desc = desc })
          end

          map("gd", vim.lsp.buf.definition, "Go to Definition")
          map("gD", vim.lsp.buf.declaration, "Go to Declaration")
          map("[d", vim.diagnostic.goto_prev, "Previous Diagnostic")
          map("]d", vim.diagnostic.goto_next, "Next Diagnostic")
          map("<leader>dd", vim.diagnostic.open_float, "Show Diagnostic")
        end,
      })
    end,
  },
}
