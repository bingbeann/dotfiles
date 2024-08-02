return {
    'nvim-telescope/telescope.nvim', 
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
        { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
        { "<leader>fg", "<cmd>Telescope git_files<cr>", desc = "Find Git Files" },
        { "<leader>fs", "<cmd>Telescope grep_string<cr>", desc = "Find In Files" },
    }
}

