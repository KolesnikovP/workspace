return {
  "numToStr/Comment.nvim",
  config = function()
    local config = require("Comment")
    config.setup({
      toggler = {
        ---Line-comment toggle keymap
        line = '<leader>cl',
        ---Block-comment toggle keymap
        block = '<leader>cb',
      },
    })
  end
}

