local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- Check how it works
vim.keymap.set('n', '<leader>gb', builtin.git_branches, {})
vim.keymap.set('n', '<leader>gc', builtin.git_commits, {})
vim.keymap.set('n', '<leader>gs', builtin.git_status, {})
vim.keymap.set('n', '<leader>ls', builtin.lsp_document_symbols, {})
vim.keymap.set('n', 'gr', builtin.lsp_references,
               {noremap = true, silent = true})
vim.keymap.set('n', 'gd', builtin.lsp_definitions,
               {noremap = true, silent = true})

-- Diagnostics
vim.keymap.set('n', '<leader>do', ':lua vim.diagnostic.open_float()<CR>')

-- NEOTREE
vim.keymap.set('n', '<leader>e', ':Neotree filesystem reveal left <CR>') -- carriage return 
vim.keymap.set('n', '<leader>E', ':Neotree float reveal<CR>')
vim.keymap.set('n', '<leader>o', ':Neotree float git_status<CR>')

-- Navigation
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')
vim.keymap.set('n', '<leader>/', ':CommentToggle<CR>')

-- Tabs Buffer navigation 
vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>')
vim.keymap.set('n', '<s-Tab>', ':BufferLineCyclePrev<CR>')
vim.keymap.set("n", "<leader>x", ":BufferLinePickClose<CR>")
vim.keymap.set("n", "<leader>X", ":BufferLineCloseRight<CR>")
vim.keymap.set("n", "<leader>s", ":BufferLineSortByTabs<CR>")

-- Terminal
vim.keymap.set("n", "<leader>tf", ":ToggleTerm direction=float<CR>")
vim.keymap.set("n", "<leader>th", ":ToggleTerm direction=horizontal<CR>")
vim.keymap.set("n", "<leader>tv", ":ToggleTerm direction=vertical size=40<CR>")
    local opts = {buffer = 0}
    vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
    vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
    vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
    vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
    vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
    vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
    vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)

