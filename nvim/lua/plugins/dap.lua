return {
    "mfussenegger/nvim-dap",
    dependencies = {
        "nvim-neotest/nvim-nio",
        "leoluz/nvim-dap-go",
        "rcarriga/nvim-dap-ui",
    },
    config = function()
        local dap = require "dap"
        local ui = require "dapui"

        require("dap-go").setup()
        require("dapui").setup()

        vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint)
        vim.keymap.set("n", "<leader>?", function()
            ui.eval(nil, { enter = true })
        end)
        vim.keymap.set("n", "<F5>", dap.continue)
        vim.keymap.set("n", "<F9>", dap.step_into)
        vim.keymap.set("n", "<F10>", dap.step_over)
        vim.keymap.set("n", "<F11>", dap.step_out)
        vim.keymap.set("n", "<F12>", dap.restart)

        dap.listeners.before.attach.dapui_config = function()
            ui.open()
        end
        dap.listeners.before.launch.dapui_config = function()
            ui.open()
        end
        dap.listeners.before.event_terminated.dapui_config = function()
            ui.close()
        end
        dap.listeners.before.event_exited.dapui_config = function()
            ui.close()
        end
    end
}

