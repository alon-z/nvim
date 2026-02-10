# nvim

Modern Neovim config with Copilot, lazy loading, and treesitter.

## Getting Started

### Prerequisites
- [Neovim](https://github.com/neovim/neovim) (0.11+ for native LSP config)
- Git
- A terminal with true color support
- ripgrep (`brew install ripgrep`) for text search

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
- Search text in files with `<C-S-f>` or `<leader>sg` (VS Code style grep)
- Search word under cursor with `<leader>sw`
- Access the file tree with nvim-tree
- Use Lazy.nvim for plugin management (`:Lazy` command)
- Toggle Claude Code with `<C-,>` (Ctrl+comma) or `<leader>a` prefix
- Resume Claude conversation with `<leader>cr` (Space+c+r)
- Add files to Claude with fzf: `<leader>aff` (files), `<leader>afg` (grep), `<leader>afb` (buffers)
- Navigate between windows with `<C-h/j/k/l>`
- GitHub integration with Octo: `<leader>o` prefix (issues, PRs, discussions)
- View CI/CD pipelines with `<leader>ci` (GitHub Actions, GitLab CI)
- Format code with `<leader>cf` or auto-format on save
- LSP: `gd` (definition), `K` (hover), `gra` (code action), `grn` (rename), `grr` (references)
- Manage LSP servers with `:Mason`

### Discovering Keybindings (which-key)
Press a key and wait ~200ms to see available keybindings in a popup.

**Leader key (`Space`):** Press `Space` and wait to see all leader-based commands.
Navigate the popup: press shown keys to execute, `<Esc>` to cancel, `<BS>` to go back.

## Keybindings Reference

### File Navigation & Search
| Keybinding | Description |
|------------|-------------|
| `<C-p>` | Smart file finder (VS Code style) |
| `<C-S-p>` | Command palette |
| `<C-S-f>` | Search text in files (grep) |
| `<leader>sg` | Search text in files (grep) |
| `<leader>sw` | Search word under cursor |
| `<leader>sk` | Browse keymaps |
| `<leader>?` | Show buffer-local keymaps |

### LSP (Language Server)
| Keybinding | Description |
|------------|-------------|
| `gd` | Go to definition |
| `gD` | Go to declaration |
| `K` | Hover documentation |
| `gra` | Code action |
| `grn` | Rename symbol |
| `grr` | Find references |
| `gri` | Go to implementation |
| `grt` | Go to type definition |
| `gO` | Document symbols |
| `<C-s>` | Signature help (insert mode) |
| `<leader>ss` | Document symbols (picker) |
| `<leader>sS` | Workspace symbols |
| `<leader>sr` | References (picker) |
| `<leader>si` | Implementations (picker) |
| `<leader>e` | Show diagnostic float |
| `[d` | Previous diagnostic |
| `]d` | Next diagnostic |

### Claude Code
| Keybinding | Description |
|------------|-------------|
| `<C-,>` | Toggle Claude terminal |
| `<leader>ac` | Toggle Claude terminal |
| `<leader>af` | Focus Claude terminal |
| `<leader>cr` | Resume Claude conversation |
| `<leader>aC` | Continue Claude conversation |
| `<leader>ab` | Add current buffer to context |
| `<leader>as` | Send selection to Claude (visual mode) |
| `<leader>aa` | Accept diff |
| `<leader>ad` | Deny diff |

### Claude Code + FZF
| Keybinding | Description |
|------------|-------------|
| `<leader>aff` | Add files to Claude (fzf picker) |
| `<leader>afg` | Search and add to Claude (grep) |
| `<leader>afb` | Add buffers to Claude |
| `<leader>afG` | Add Git files to Claude |
| `<leader>afd` | Add directory files to Claude |

### GitHub (Octo)
| Keybinding | Description |
|------------|-------------|
| `<leader>oi` | List GitHub issues |
| `<leader>op` | List GitHub PRs |
| `<leader>od` | List GitHub discussions |
| `<leader>on` | List GitHub notifications |
| `<leader>os` | Search GitHub |

### Git & CI/CD
| Keybinding | Description |
|------------|-------------|
| `<leader>lg` | Open Lazygit |
| `<leader>ci` | Open CI/CD pipeline panel |

### Code Editing
| Keybinding | Description |
|------------|-------------|
| `<Tab>` | Accept Copilot suggestion |
| `<leader>p` | Accept and goto (Copilot NES) |
| `<leader>cf` | Format buffer |

### Commands
| Command | Description |
|---------|-------------|
| `:Lazy` | Plugin manager |
| `:Mason` | LSP server manager |
| `:LspInfo` | Show active LSP clients |
| `:ConformInfo` | Show formatter info |
| `:Hardtime enable/disable` | Toggle habit trainer |
| `:Hardtime report` | View habit report |

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
  - Text search with `<C-S-f>` or `<leader>sg` (grep across files)
  - Search word under cursor with `<leader>sw`
  - LSP symbols: `<leader>ss` (document), `<leader>sS` (workspace), `<leader>sr` (references), `<leader>si` (implementations)
  - Lazygit integration with `<leader>lg`
  - Keymaps browser with `<leader>sk`
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
- [x] https://github.com/neovim/nvim-lspconfig + mason.nvim
  - LSP support using Neovim 0.11+ native `vim.lsp.config` API
  - Mason auto-installs: lua_ls, ts_ls, pyright, gopls, rust_analyzer, jsonls, yamlls, html, cssls, bashls
  - `:Mason` - Open Mason UI to manage LSP servers
  - `:LspInfo` - Show active LSP clients
  - Built-in keybindings: `K` (hover), `gra` (code action), `grn` (rename), `grr` (references), `gri` (implementation), `grt` (type def), `gO` (symbols)
  - Custom keybindings: `gd` (definition), `gD` (declaration), `[d`/`]d` (diagnostics), `<leader>e` (diagnostic float)
- [x] https://github.com/m4xshen/hardtime.nvim
  - Helps break bad Vim habits by blocking repeated key presses
  - Encourages using counts and better motions instead of key spam
  - `:Hardtime enable/disable` - Toggle the plugin
  - `:Hardtime report` - View habit report
