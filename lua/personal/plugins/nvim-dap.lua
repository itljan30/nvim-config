return {
    {
        'mfussenegger/nvim-dap',
            config = function()
            local dap = require('dap')

            dap.set_log_level('TRACE')

            -- Python Adapter - debugpy
            dap.adapters.python = {
                type = 'server',
                host = '127.0.0.1',
                port = 5678,
                executable = {
                    command = '/home/itljan30/.local/bin/debugpy',
                    args = { '--listen', '5678', '--wait-for-client', '--log-to-stderr' }
                }
            }

            dap.configurations.python = {
                {
                    type = 'python',
                    request = 'launch',
                    name = 'Launch file',
                    program = function()
                        local path = vim.fn.input('Path to Python script: ', vim.fn.getcwd() .. '/', 'file')
                        return path
                    end,
                    pythonPath = function()
                        return '/usr/bin/python3'
                    end,
                },
            }

            -- C/C++ Adapter - cppdbg
            dap.adapters.cppdbg = {
                id = 'cppdbg',
                type = 'executable',
                command = '/home/itljan30/.local/share/cppdbg/cppdbg/extension/debugAdapters/bin/OpenDebugAD7',
                args = {},
            }
            

            dap.configurations.c = {
                {
                    name = 'Debug C program',
                    type = 'cppdbg',
                    request = 'launch',
                    program = function()
                        local path = vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
                        return path
                    end,
                    cwd = vim.fn.getcwd(),
                    stopAtEntry = false,
                    MIMode = 'gdb',
                    setupCommands = {
                        {
                            text = '-enable-pretty-printing',
                            description = 'Enable pretty printing',
                            continueOnError = false
                        }
                    },
                    miDebuggerPath = '/usr/bin/gdb',
                    externalConsole = false,
                }
            }      
        


          -- Keybindings for debugging
          vim.api.nvim_set_keymap('n', '<leader>dc', ":lua require'dap'.terminate()<CR>", { noremap = true })
          vim.api.nvim_set_keymap('n', '<leader>db', ":lua require'dap'.toggle_breakpoint()<CR>", { noremap = true })
          vim.api.nvim_set_keymap('n', '<leader>dd', ":lua require'dap'.continue()<CR>", { noremap = true })
          vim.api.nvim_set_keymap('n', '<leader>ds', ":lua require'dap'.step_over()<CR>", { noremap = true })
          vim.api.nvim_set_keymap('n', '<leader>di', ":lua require'dap'.step_into()<CR>", { noremap = true })
          vim.api.nvim_set_keymap('n', '<leader>do', ":lua require'dap'.step_out()<CR>", { noremap = true })
        end
    },

    {
        'nvim-neotest/nvim-nio',
        config = function()
        -- No special configuration needed for nvim-nio itself
        end
    },
    -- Optional: nvim-dap-ui for a more interactive UI
    {
        'rcarriga/nvim-dap-ui',
        config = function()
            local dap_ui = require('dapui')

            dap_ui.setup()

            -- Toggle DAP UI with a keybinding
            vim.api.nvim_set_keymap('n', '<leader>du', ":lua require'dapui'.toggle()<CR>", { noremap = true })

            -- Automatically open the UI when debugging starts
            require('dap').listeners.after['event_initialized']['dapui_config'] = function()
                dap_ui.open()
            end

            -- Automatically close the UI when debugging ends
            require('dap').listeners.after['event_terminated']['dapui_config'] = function()
                dap_ui.close()
            end

            require('dap').listeners.after['event_exited']['dapui_config'] = function()
                dap_ui.close()
            end
        end
    }
}

