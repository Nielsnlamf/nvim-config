vim.pack.add({
    {
        src = "https://github.com/numToStr/Comment.nvim",
        name = "Comment.nvim",
    },
})

require("Comment").setup({
    mappings = {
        basic = true,
        extra = true,
    },
    padding = true,
    sticky = true,
})
