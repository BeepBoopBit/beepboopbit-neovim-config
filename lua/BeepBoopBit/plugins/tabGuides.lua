return {
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
    },
    {
        "shellRaining/hlchunk.nvim",
        event = { "UIEnter" },
        dependencies = {
            { "prichrd/netrw.nvim" },
        },
        config = function()
            require('hlchunk').setup({
                chunk = {
                    chars = {
                        horizontal_line = "─",
                        vertical_line = "│",
                        left_top = "╭",
                        left_bottom = "╰",
                        right_arrow = ">",
                    },
                    style = "#00ffff",
                },
                line_num = {
                    enable = true,
                    use_treesitter = true,
                    style = "#806d9c",
                },
                blank = {
                    enable = false,
                }
            })
        end
    }
}
