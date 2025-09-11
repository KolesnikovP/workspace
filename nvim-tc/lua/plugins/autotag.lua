return {
    'windwp/nvim-ts-autotag',
    config = function()
      require("nvim-ts-autotag").setup();
      -- Modern diagnostics configuration
      vim.diagnostic.config({
        underline = true,
        virtual_text = { spacing = 5 },
        update_in_insert = true,
      })

    end
  -- use opts = {} for passing setup options
  -- this is equivalent to setup({}) function
}
