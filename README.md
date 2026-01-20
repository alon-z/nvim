# nvim

Modern Neovim config with Copilot, lazy loading, and treesitter.

## Getting Started

### Prerequisites
- [Neovim](https://github.com/neovim/neovim) (0.8+)
- Git
- A terminal with true color support

### Installation

1. Clone this configuration to your nvim config directory:
```bash
git clone <repository-url> ~/.config/nvim
```

2. Start Neovim:
```bash
nvim
```

3. Lazy.nvim will automatically install all plugins on first launch. Wait for the installation to complete.

### Basic Usage
- Use `<Tab>` for Copilot code suggestions
- Smart search files with `<C-p>` (VS Code style picker)
- Access the file tree with nvim-tree
- Use Lazy.nvim for plugin management (`:Lazy` command)
- Toggle Claude Code terminal with `<C-,>` (Ctrl+comma)
- Open Claude Code in vertical split (side panel) with `<leader>cp` (Space+c+p)
- Resume Claude conversation with `<leader>cr` (Space+c+r)
- Navigate between windows with `<C-h/j/k/l>`

### Discovering Keybindings (which-key)
Press a key and wait ~200ms to see available keybindings in a popup.

**Leader key (`Space`):** Press `Space` and wait to see all leader-based commands:
- `<leader>c` - Claude Code commands
- `<leader>?` - Show buffer-local keymaps
- Navigate the popup: press shown keys to execute, `<Esc>` to cancel, `<BS>` to go back

**g prefix:** Press `g` and wait to see all g-commands:
- `gd` - Go to definition
- `gg` - Go to first line
- `gf` - Go to file under cursor
- `gc` - Comment (if configured)
- And many more built-in Vim commands

# TODO

- [ ] https://github.com/wsdjeg/SpaceVim
- [x] https://github.com/greggh/claude-code.nvim
  - Toggle with <C-,> (Ctrl+comma)
  - Open in vertical split (side panel) with <leader>cp (Space+c+p)
  - Resume conversation picker with <leader>cr (Space+c+r)
  - Opens in floating window (85% size, centered, rounded border, 80% transparent)
  - Navigate back with <C-k> or close with <C-,>
- [x] https://github.com/folke/snacks.nvim
  - Smart file finder with `<C-p>` (VS Code style popup)
  - Lazygit integration with `<leader>lg`
  - Picker layout: centered, 50% width, 40% height, rounded borders
- [ ] https://github.com/folke/lazy.nvim
- [ ] https://github.com/junegunn/vim-plug
- [ ] https://github.com/topaxi/pipeline.nvim
- [ ] https://github.com/nvim-tree/nvim-tree.lua
- [ ] https://github.com/nvim-treesitter/nvim-treesitter
- [ ] https://www.youtube.com/watch?v=ZWWxwwUsPNw
- [ ] https://github.com/neovim/neovim/issues/34763
- [x] https://github.com/zbirenbaum/copilot.lua
  - Suggestion with <Tab>
- [ ] https://github.com/zbirenbaum/copilot-cmp
- [ ] https://nvchad.com/
- [ ] https://github.com/numToStr/Comment.nvim
- [ ] https://github.com/folke/noice.nvim
- [ ] https://github.com/yetone/avante.nvim/commit/2159c0c75c2887cc6bcb43020be31337316547cf
- [ ] https://github.com/yorukot/superfile
- [ ] https://github.com/jesseduffield/lazygit
- [ ] https://fishshell.com/
- [ ] https://github.com/nikitabobko/AeroSpace
- [ ] https://luarocks.org/
- [ ] https://github.com/folke/neoconf.nvim
- [ ] https://github.com/kristijanhusak/vim-dadbod-ui
- [x] https://github.com/nvim-lualine/lualine.nvim
  - Statusline with auto theme detection
- [x] https://github.com/folke/which-key.nvim
  - Shows available keybindings in a popup as you type
  - `<leader>?` to show buffer local keymaps
  - Built-in plugins for marks, registers, and spelling suggestions
- [x] https://github.com/sainnhe/gruvbox-material
  - Gruvbox colorscheme with softer contrast
  - Background: `medium` (options: `hard`, `medium`, `soft`)
  - Palette: `material` (options: `material`, `mix`, `original`)
- [ ] https://github.com/letieu/jira.nvim
- [ ] https://github.com/whyisdifficult/jiratui
- [ ] https://github.com/nvim-mini/mini.nvim/blob/main/readmes/mini-fuzzy.md
- [ ] https://github.com/Rimkomatic/Re-Nvim/tree/main
- [ ] https://terminaltrove.com/dotstate/
- [ ] https://github.com/MeanderingProgrammer/render-markdown.nvim
