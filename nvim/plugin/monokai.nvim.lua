vim.pack.add({
	{ src = "https://github.com/tanvirtin/monokai.nvim", name = "monokai" },
})

vim.cmd.colorscheme("monokai")

-- Make background transparent
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })

-- Make floating windows transparent
vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
vim.api.nvim_set_hl(0, "Pmenu", { bg = "none" })
vim.api.nvim_set_hl(0, "StatusLine", { bg = "none" }) -- optional

-- Make number line transparent
vim.api.nvim_set_hl(0, "LineNr", { bg = "NONE" })
vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "NONE" })
vim.api.nvim_set_hl(0, "LineNrAbove", { bg = "NONE" })
vim.api.nvim_set_hl(0, "LineNrBelow", { bg = "NONE" })
vim.api.nvim_set_hl(0, "FoldColumn", { bg = "NONE" })
