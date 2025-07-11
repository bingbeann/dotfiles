return {
    "f-person/git-blame.nvim",
    event = "VeryLazy",
    opts = {
        enabled = true,
        virtual_text_column = 1,
        message_template = "   <summary> • <date> • <author> • <<sha>>",
        date_format = "%Y-%m-%d %H:%M",
        max_commit_summary_length = 50,
    },
}
