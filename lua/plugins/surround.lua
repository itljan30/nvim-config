return {
    "kylechui/nvim-surround",
    version = "^3.0.0",
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
            keymaps = {
                insert = "<C-g>s",
                insert_line = "<C-g>S",
                normal = "<leader>s",
                normal_cur = "<leader>ss",
                normal_line = "<leader>S",
                normal_cur_line = "<leader>SS",
                visual = "S",
                visual_line = "gS",
                delete = "<leader>ds",
                change = "<leader>cs",
                change_line = "cS",
            }
        })
    end,
}
