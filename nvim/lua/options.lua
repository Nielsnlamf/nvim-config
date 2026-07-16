local opt = vim.opt

-- No longer automatically wrap comments
opt.formatoptions:remove({ "c" })
-- No longer automatically continue comments on Enter
opt.formatoptions:remove({ "r" })
-- No longer automatically continue comments on new line using o or O
opt.formatoptions:remove({ "o" })

vim.g.mapleader = " "

-- Hint: use `:h <option>` to figure out the meaning if needed
opt.clipboard = 'unnamedplus'   -- use system clipboard 
opt.completeopt = {'menu', 'menuone', 'noselect'}
opt.mouse = 'a'                 -- allow the mouse to be used in nvim

-- Tab
opt.tabstop = 4                 -- number of visual spaces per TAB
opt.softtabstop = 4             -- number of spaces in tab when editing
opt.shiftwidth = 4              -- insert 4 spaces on a tab
opt.expandtab = true            -- tabs are spaces, mainly because of Python

-- UI config
opt.number = true               -- show absolute number
opt.relativenumber = false       -- add numbers to each line on the left side
opt.cursorline = true           -- highlight cursor line underneath the cursor horizontally
opt.splitbelow = false           -- open new vertical split bottom
opt.splitright = false           -- open new horizontal splits right
-- opt.termguicolors = true        -- enable 24-bit RGB color in the TUI
opt.showmode = false            -- we are experienced, wo don't need the "-- INSERT --" mode hint


-- Searching
opt.incsearch = true            -- search as characters are entered
opt.hlsearch = true            -- do not highlight matches
opt.ignorecase = true           -- ignore case in searches by default
opt.smartcase = true            -- but make it case sensitive if an uppercase is entered

