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
- Toggle Claude Code with `<C-,>` (Ctrl+comma) or `<leader>a` prefix
- Resume Claude conversation with `<leader>cr` (Space+c+r)
- Add files to Claude with fzf: `<leader>aff` (files), `<leader>afg` (grep), `<leader>afb` (buffers)
- Navigate between windows with `<C-h/j/k/l>`
- GitHub integration with Octo: `<leader>o` prefix (issues, PRs, discussions)
- View CI/CD pipelines with `<leader>ci` (GitHub Actions, GitLab CI)
- Format code with `<leader>cf` or auto-format on save

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
- [x] https://github.com/coder/claudecode.nvim (migrated from greggh/claude-code.nvim)
  - `<C-,>` - Toggle Claude terminal (works in normal and terminal mode)
  - `<leader>ac` - Toggle Claude terminal (alternative)
  - `<leader>af` - Focus Claude terminal
  - `<leader>cr` - Resume Claude conversation
  - `<leader>aC` - Continue Claude conversation
  - `<leader>ab` - Add current buffer to context
  - `<leader>as` - Send visual selection to Claude / Add file from tree browsers
  - `<leader>aa` - Accept diff
  - `<leader>ad` - Deny diff
  - Opens in right panel (40% width)
  - Requires snacks.nvim and Claude Code CLI
- [x] https://github.com/folke/snacks.nvim
  - Smart file finder with `<C-p>` (VS Code style popup)
  - Lazygit integration with `<leader>lg`
  - Picker layout: centered, 50% width, 40% height, rounded borders
- [ ] https://github.com/folke/lazy.nvim
- [ ] https://github.com/junegunn/vim-plug
- [x] https://github.com/topaxi/pipeline.nvim
  - View CI/CD pipeline status (GitHub Actions, GitLab CI) in Neovim
  - `<leader>ci` - Open pipeline panel
  - `q` - Close panel
  - `gp` - Open pipeline on GitHub
  - `gr` - Open run on GitHub
  - `gj` - Open job on GitHub
  - `d` - Dispatch new workflow run
  - Requires `gh` CLI authenticated or `GITHUB_TOKEN` env var
- [ ] https://github.com/nvim-tree/nvim-tree.lua
- [ ] https://github.com/nvim-treesitter/nvim-treesitter
- [ ] https://www.youtube.com/watch?v=ZWWxwwUsPNw
- [ ] https://github.com/neovim/neovim/issues/34763
- [x] https://github.com/zbirenbaum/copilot.lua
  - Suggestion with <Tab>
  - Next suggest edit <Space+p> 
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
- [x] https://github.com/pwntester/octo.nvim
  - Edit and review GitHub issues, PRs, and discussions in Neovim
  - `<leader>oi` - List GitHub issues
  - `<leader>op` - List GitHub PRs
  - `<leader>od` - List GitHub discussions
  - `<leader>on` - List GitHub notifications
  - `<leader>os` - Search GitHub
  - Uses snacks.nvim as picker
  - Requires `gh` CLI to be installed and authenticated
- [ ] https://github.com/letieu/jira.nvim
- [ ] https://github.com/whyisdifficult/jiratui
- [ ] https://github.com/nvim-mini/mini.nvim/blob/main/readmes/mini-fuzzy.md
- [ ] https://github.com/Rimkomatic/Re-Nvim/tree/main
- [ ] https://terminaltrove.com/dotstate/
- [ ] https://github.com/MeanderingProgrammer/render-markdown.nvim
- [ ] https://jiratui.sh/
- [ ] https://github.com/CopilotC-Nvim/CopilotChat.nvim
- [x] https://github.com/stevearc/conform.nvim
  - Lightweight formatter plugin with format-on-save
  - `<leader>cf` - Format buffer (works in normal and visual mode)
  - `:ConformInfo` - View configured formatters and log file
  - Auto-formats on save with 500ms timeout
  - Configured formatters: stylua (Lua), ruff (Python), prettier/prettierd (JS/TS/JSON/YAML/HTML/CSS/MD), goimports+gofmt (Go), rustfmt (Rust), shfmt (shell)
  - Falls back to LSP formatting when no formatter is available
- [x] https://github.com/pittcat/claude-fzf.nvim
  - Seamless integration between fzf-lua and claudecode.nvim
  - `<leader>aff` - Add files to Claude context (fzf picker)
  - `<leader>afg` - Search and add code to Claude (grep picker)
  - `<leader>afb` - Add buffers to Claude context
  - `<leader>afG` - Add Git files to Claude context
  - `<leader>afd` - Add directory files to Claude context
  - In fzf: `Tab` multi-select, `Ctrl-y` smart context, `Ctrl-d` send directory
  - Requires fzf-lua (included as dependency)
