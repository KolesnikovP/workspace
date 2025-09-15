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

      local lspconfig = require("lspconfig")
      -- Use ts_ls if available, otherwise fallback to tsserver
      if lspconfig.ts_ls then
        lspconfig.ts_ls.setup({ capabilities = capabilities })
      elseif lspconfig.tsserver then
        lspconfig.tsserver.setup({ capabilities = capabilities })
      end
      lspconfig.solargraph.setup({
        capabilities = capabilities
      })
      lspconfig.html.setup({
        capabilities = capabilities
      })
      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })
      lspconfig.gopls.setup({  -- Go LSP with proper settings nesting
        capabilities = capabilities,
        settings = {
          gopls = {
            completeUnimported = true,
            usePlaceholders = true,
            analyses = {
              unusedparams = true,
            },
          },
        },
      })

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
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', '<leader>gd', vim.lsp.buf.declaration, {})
      vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references, {})
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}
