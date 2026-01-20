return {
    "nvim-telescope/telescope.nvim", tag = "v0.2.1",
    dependencies = {
        "nvim-lua/plenary.nvim",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },

    config = function()
        local telescope = require("telescope")
        local actions = require("telescope.actions")

        telescope.setup({
            defaults = {
                path_display = { "smart" },
                mappings = {
                    i = {
                        ["<C-k>"] = actions.move_selection_previous,
                        ["<C-j>"] = actions.move_selection_next,
                        ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
                    },
                },
            },
        })

        telescope.load_extension("fzf")

        vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
        vim.keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<CR>")
        -- vim.keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<CR>")
        -- vim.keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<CR>")

        local builtin = require("telescope.builtin")
        vim.keymap.set("n", "<leader>fs", function()
            builtin.grep_string({
                    search = vim.fn.input("Grep > ")
                })
        end
    ) 
    end,
}
