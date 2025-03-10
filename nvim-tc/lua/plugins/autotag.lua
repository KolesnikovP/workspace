return {
    'windwp/nvim-ts-autotag',
    config = function()
      require("nvim-ts-autotag").setup();
      vim.lsp.handlers['textdocument/publishdiagnostics'] =
      vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
        underline = true,
        virtual_text = {spacing = 5},
        update_in_insert = true
      })

    end
  -- use opts = {} for passing setup options
  -- this is equivalent to setup({}) function
}

