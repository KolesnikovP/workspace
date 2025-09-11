# Neovim Config (nvim-tc)

This repo contains a modular Neovim setup powered by lazy.nvim. It focuses on a clear structure, pragmatic defaults, and a few quality-of-life plugins.

## Layout

- `init.lua`
  - Entry point. Delegates to `config.lazy`, then loads `config.keymaps`, `vim-options`, and `config.ui-config`.
- `lua/config/lazy.lua`
  - Bootstraps and configures `folke/lazy.nvim`. Imports the plugin spec from `lua/plugins`.
- `lua/config/keymaps.lua`
  - Global keymaps for Telescope, Neo-tree, Bufferline, Toggleterm, LSP navigation, diagnostics, and editor actions.
  - Adds Comment.nvim keybind `<leader>/` (line toggle), plus convenience bindings: `<leader>w` (save), `<leader>h` (clear search highlight).
- `lua/vim-options.lua`
  - Core editor options (indentation, numbers). Enables true color via `termguicolors`.
- `lua/config/ui-config.lua`
  - UI highlight overrides (transparent background, bordered floats) and Telescope/WhichKey visuals.

## Plugins (`lua/plugins`)

- `lsp-config.lua`
  - LSP servers via `neovim/nvim-lspconfig` with `cmp_nvim_lsp` capabilities.
  - TypeScript: uses `ts_ls` if available, otherwise falls back to `tsserver`.
  - Go: `gopls` with settings under `settings.gopls`.
  - Also configures `lua_ls`, `solargraph`, and `html`.
- `completions.lua`
  - Autocompletion with `nvim-cmp` + sources (LSP, buffer, path) and snippets (LuaSnip + friendly-snippets).
- `telescope.lua`
  - `telescope.nvim` plus `telescope-ui-select` extension.
- `nvim-treesitter.lua`
  - Treesitter parsers (typescript, tsx, javascript, lua, go), highlighting and indentation.
- `nvim-web-devicons.lua`
  - File icons used by other plugins.
- `nvim-tree.lua`
  - Configures Neo-tree (`nvim-neo-tree/neo-tree.nvim`) with visible filtered items. Name kept for historical reasons.
- `bufferline.lua`
  - Buffer line with LSP diagnostics and Neo-tree offset.
- `toggleterm.lua`
  - Terminal integration. Sets terminal window keymaps via a safe `TermOpen` augroup.
- `comments.lua`
  - Comment.nvim with leader-based toggles (`<leader>cl` line, `<leader>cb` block) and an extra `<leader>/` mapping in keymaps.
- `none-ls.lua`
  - null-ls for formatting/diagnostics: Stylua, RuboCop, ESlint_d, Prettier, and Go tools (gofmt, goimports, golangci-lint, staticcheck).
  - Tip: choose a single JS/TS formatter (eslint_d or prettier) to avoid conflicts.
- `lualine.lua`
  - Statusline with `theme = 'auto'` to match the active colorscheme.
- `kanagawaTheme.lua`
  - Kanagawa theme with `transparent = true`. Selected via `colorscheme kanagawa`.
- `autopairs.lua`, `autotag.lua`, `whichkey.lua`
  - Autopairs on InsertEnter, TS autotag with modern diagnostics config, and WhichKey with a bordered window.

## Key Bindings (highlights)

- Leader is space: `<space>`
- Telescope: `<leader>ff` files, `<leader>fg` live grep, `<leader>fb` buffers, `<leader>fh` help.
- Neo-tree: `<leader>e` left explorer, `<leader>E` float, `<leader>o` git status.
- Bufferline: `<Tab>`/`<S-Tab>` next/prev, `<leader>x` pick close, `<leader>X` close right, `<leader>s` sort by tabs.
- LSP (Telescope-powered): `gd` definitions, `gr` references, `<leader>ls` document symbols. Hover `K`, actions `<leader>ca`, declaration `<leader>gd`, references `<leader>gr`.
- Diagnostics: `<leader>do` open float.
- Comments: `<leader>/` line toggle; also `<leader>cl` and `<leader>cb`.
- Save/Clear: `<leader>w` save, `<leader>h` clear search highlight.
- Terminal: `<leader>tf` float, `<leader>th` horizontal, `<leader>tv` vertical.

## Notes

- lazy bootstrap runs once in `config.lazy`; `init.lua` no longer duplicates it.
- True-color is enabled; statusline uses `auto` theme to match active colorscheme.
- TypeScript server name differences between lspconfig versions are handled (ts_ls vs tsserver).
- If formatters compete (eslint_d vs prettier), disable one in `none-ls.lua` per project preference.

## Getting Started

- Launch Neovim; lazy.nvim will install plugins on first run.
- Use `:Lazy` to manage plugins; `:Mason` for LSP servers and tools.
- Optional: set `background=dark` to use Kanagawa Wave variant.

