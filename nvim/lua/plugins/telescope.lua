return {
    'nvim-telescope/telescope.nvim', 
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
        { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "List files in CWD, respects .gitignore" },
        { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Searches for a string in CWD, respects .gitignore" },
        { "<leader>fb", "<cmd>Telescope current_buffer_fuzzy_find sorting_strategy=ascending prompt_position=top<cr>", desc = "Search in current buffer" },
        { "<leader>fd", "<cmd>Telescope diagnostics<cr>", desc = "List diagnostic(s)" },
    }
}

