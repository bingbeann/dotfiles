return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            local configs = require("nvim-treesitter.configs")

            configs.setup({
                highlight = { enable = true },
                indent = { enable = true },
                auto_install = { enable = true },
                ensure_installed = {
                    "lua",
                    "vim",
                    "c",
                    "go",
                    "rust",
                    "javascript",
                    "typescript",
                    "python",
                    "json",
                    "markdown",
                    "yaml",
                },
            })
        end
    }
}

