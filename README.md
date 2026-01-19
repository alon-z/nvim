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
- Access the file tree with nvim-tree
- Use Lazy.nvim for plugin management (`:Lazy` command)
- Toggle Claude Code terminal with `<C-,>` (Ctrl+comma)
- Resume Claude conversation with `<leader>cr` (Space+c+r)
- Navigate between windows with `<C-h/j/k/l>`

# TODO

- [ ] https://github.com/wsdjeg/SpaceVim
- [x] https://github.com/greggh/claude-code.nvim
  - Toggle with <C-,> (Ctrl+comma)
  - Resume conversation picker with <leader>cr (Space+c+r)
  - Opens in floating window (85% size, centered, rounded border, 80% transparent)
  - Navigate back with <C-k> or close with <C-,>
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
