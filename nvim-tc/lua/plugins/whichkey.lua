return {
  {  "folke/which-key.nvim",
    config = function()
      local wk = require("which-key")
      wk.setup({
        win = {
          border = "single",  -- Adds a border around the popup
          no_overlap = true,  -- Prevents overlap with the cursor
          padding = {1, 2},   -- Extra padding for better appearance
          title = true,       -- Adds a title (if applicable)
          title_pos = "center", -- Centers the title
        },
      })
      wk.register({
        f = {
          name = "Find",
          f = {"Find File"},
          b = {"Find Buffer"},
          h = {"Find Help"},
          w = {"Find Text"}
        },
        e = {"File Manager"},
        o = {"Git status"},
        x = {"Close Buffer"},
        w = {"Save"},
        t = {name = "Terminal", f = {"Float terminal"}, h = {"Horizontal terminal"}},
        h = {"No highlight"},
        g = {name = "Git", b = "Branches", c = "Commits", s = "Status"},
        c = {name = "Comment", l = "Comment Line"},
        l = {
          name = "LSP",
          d = "Diagnostic",
          D = "Hover diagnostic",
          f = "Format",
          r = "Rename",
          a = "Action",
          s = "Symbol"
        }
      },
      {prefix = "<leader>"})
    end
  }
}
