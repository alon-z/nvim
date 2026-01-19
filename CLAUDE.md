# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Quick Reference

Neovim config using lazy.nvim for plugin management. Entry: `init.lua` → `config.lazy` → plugins load from `lua/plugins/`.

## Adding Plugins

Create `lua/plugins/my-plugin.lua` returning lazy.nvim spec:
```lua
return {
  {
    "user/plugin-name",
    event = "InsertEnter",  -- or cmd, lazy = true
    config = function()
      require("plugin").setup({})
    end,
  },
}
```

Auto-imports via `{ import = "plugins" }` in `lua/config/lazy.lua:40`.

## Commands

- `make install` - Install dependencies

## Key Settings

- Leader: Space (`lua/config/lazy.lua:21`)
- Local leader: Backslash (`lua/config/lazy.lua:22`)
- Copilot accept: `<Tab>` (`lua/plugins/copilot.lua:12`)

## Important

- lazy.nvim auto-bootstraps on first run
- Use lazy loading (event/cmd) for performance
- Don't require plugin files directly; use `dependencies` field

## Documentation Practice

- **ALWAYS** update README.md when adding/configuring plugins
- Mark installed plugins in the TODO section with `[x]`
- Add key commands and usage notes under each installed item
- Update "Basic Usage" section with new keybindings
- Keep documentation in sync with actual configuration
