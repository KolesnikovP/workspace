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
          g = {"Find Text"}, -- live_grep
          b = {"Find Buffer"},
          h = {"Find Help"},
          r = {"Recent Files"}
        },
        e = {"File Manager"},
        E = {"File Manager (Float)"},
        o = {"Git Status"},
        x = {"Close Buffer"},
        X = {"Close Right Buffers"},
        w = {"Save"},
        h = {"No highlight"},
        ["<leader>"] = {"Comment Line"}, -- <leader>/
        t = {
          name = "Terminal",
          f = {"Float Terminal"},
          h = {"Horizontal Terminal"},
          v = {"Vertical Terminal"}
        },
        g = {
          name = "Git",
          b = {"Git Branches"},
          c = {"Git Commits"},
          s = {"Git Status"}
        },
        l = {
          name = "LSP",
          d = {"Diagnostic"},
          D = {"Hover Diagnostic"},
          f = {"Format"},
          r = {"Rename"},
          a = {"Code Action"},
          s = {"Document Symbols"}
        },
        d = {
          name = "Diagnostics",
          o = {"Open Float"}
        },
        s = {"Sort Tabs"}
      },
      { prefix = "<leader>" })
    end
  }
}
