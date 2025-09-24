return {
  {
  "williamboman/mason.nvim",
  config = function()
    require("mason").setup()
  end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {"lua_ls", "gopls"}
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      -- Configure servers using Neovim 0.11+ API
      -- TypeScript: prefer ts_ls if mason-lspconfig exposes it; else tsserver
      local ok_mlsp, mlsp = pcall(require, 'mason-lspconfig')
      local prefer_ts_ls = false
      if ok_mlsp and mlsp.get_available_servers then
        local available = mlsp.get_available_servers() or {}
        prefer_ts_ls = vim.tbl_contains(available, 'ts_ls')
      end
      if prefer_ts_ls then
        vim.lsp.config.ts_ls = { capabilities = capabilities }
      else
        vim.lsp.config.tsserver = { capabilities = capabilities }
      end

      vim.lsp.config.solargraph = {
        capabilities = capabilities,
      }
      vim.lsp.config.html = {
        capabilities = capabilities,
      }
      vim.lsp.config.lua_ls = {
        capabilities = capabilities,
      }
      vim.lsp.config.gopls = {
        capabilities = capabilities,
        settings = {
          gopls = {
            completeUnimported = true,
            usePlaceholders = true,
            analyses = { unusedparams = true },
          },
        },
      }

      -- Global auto-enable removed; servers will start for matching buffers

local border = "rounded"

vim.lsp.handlers["textDocument/hover"] =
  vim.lsp.with(vim.lsp.handlers.hover, { border = border })
vim.lsp.handlers["textDocument/signatureHelp"] =
  vim.lsp.with(vim.lsp.handlers.signature_help, { border = border })
vim.diagnostic.config({ float = { border = border } })

-- FIX: something overrides borders for a hover and without this it doesn't work.
-- Hard override: catches any hover that bypasses the above
local orig = vim.lsp.util.open_floating_preview
function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
  opts = opts or {}
  opts.border = opts.border or border
  return orig(contents, syntax, opts, ...)
end
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = 'LSP Hover' })
      vim.keymap.set('n', '<leader>gd', vim.lsp.buf.declaration, { desc = 'LSP Declaration' })
      vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references, { desc = 'LSP References' })
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = 'LSP Code Action' })
    end
  }
}
