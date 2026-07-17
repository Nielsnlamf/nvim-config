-- define common options
local opts = {
    noremap = true,      -- non-recursive
    silent = true,       -- do not show message
}

local map = vim.keymap.set

-----------------
-- Normal mode --
-----------------

-- Hint: see `:h vim.map.set()`
-- Better window navigation
map('n', '<C-h>', '<C-w>h', opts)
map('n', '<C-j>', '<C-w>j', opts)
map('n', '<C-k>', '<C-w>k', opts)
map('n', '<C-l>', '<C-w>l', opts)

-- Toggle comment on current line
map("n", "<leader>/", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>")

-- Resize with arrows
-- delta: 2 lines
map('n', '<C-Up>', ':resize -2<CR>', opts)
map('n', '<C-Down>', ':resize +2<CR>', opts)
map('n', '<C-Left>', ':vertical resize -2<CR>', opts)
map('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-----------------
-- Visual mode --
-----------------

-- Hint: start visual mode with the same area as the previous area and the same mode
map('v', '<', '<gv', opts)
map('v', '>', '>gv', opts)

-- Toggle comment on selection
map("v", "<leader>/", "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>")


-----------------
-- MISCELLANEOUS --
-----------------

-- Stop search highlight on esc
map("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Make ctrl+backspace work
map("i", "<C-BS>", "<C-w>")

-- Don't copy deleted lines/text to clipboard
-- Normal mode
-- map("n", "dd", '"_dd')
-- map("n", "D", '"_D')
-- map("n", "x", '"_x')
-- map("n", "X", '"_X')

-- Visual mode
-- map("v", "d", '"_d')
-- map("v", "x", '"_x')
