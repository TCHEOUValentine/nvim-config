-- debug.lua
--
-- Shows how to use the DAP plugin to debug your code.
--
-- Primarily focused on configuring the debugger for Go, but can
-- be extended to other languages as well. That's why it's called
-- kickstart.nvim and not kitchen-sink.nvim ;)

return {
  -- NOTE: Yes, you can install new plugins here!
  'mfussenegger/nvim-dap',
  -- NOTE: And you can specify dependencies as well
  dependencies = {
    -- Creates a beautiful debugger UI
    'rcarriga/nvim-dap-ui',

    -- Required dependency for nvim-dap-ui
    'nvim-neotest/nvim-nio',

    -- Add virtual text for variable values
    'theHamsta/nvim-dap-virtual-text',

    -- Installs the debug adapters for you
    'williamboman/mason.nvim',
    'jay-babu/mason-nvim-dap.nvim',

    -- Add your own debuggers here
    'mfussenegger/nvim-dap-python',
  },
  keys = function(_, keys)
    local dap = require 'dap'
    local dapui = require 'dapui'
    return {
      -- Basic debugging keymaps, feel free to change to your liking!
      { '<leader>dr', dap.continue, desc = 'Debug: Start/Continue' },
      { '<leader>ds', dap.step_into, desc = 'Debug: Step Into' },
      { '<leader>dn', dap.step_over, desc = 'Debug: Step Over' },
      { '<leader>do', dap.step_out, desc = 'Debug: Step Out' },
      { '<leader>b', dap.toggle_breakpoint, desc = 'Debug: Toggle Breakpoint' },
      {
        '<leader>B',
        function()
          dap.set_breakpoint(vim.fn.input 'Breakpoint condition: ')
        end,
        desc = 'Debug: Set Breakpoint',
      },
      -- Toggle to see last session result. Without this, you can't see session output in case of unhandled exception.
      { '<leader>dt', dapui.toggle, desc = 'Debug: See last session result.' },
      unpack(keys),
    }
  end,
  config = function()
    local dap = require 'dap'
    local dapui = require 'dapui'

    require('nvim-dap-virtual-text').setup {
      display_callback = function(variable)
        if #variable.value > 15 then
          return ' ' .. string.sub(variable.value, 1, 15) .. '... '
        end

        return ' ' .. variable.value
      end,
    }

    require('mason-nvim-dap').setup {
      -- Makes a best effort to setup the various debuggers with
      -- reasonable debug configurations
      automatic_installation = true,

      -- You can provide additional configuration to the handlers,
      -- see mason-nvim-dap README for more information
      handlers = {},

      -- You'll need to check that you have the required things installed
      -- online, please don't ask me how to install them :)
      ensure_installed = {
        -- Update this to ensure that you have the debuggers for the langs you want
        'debugpy',
      },
    }

    -- Dap UI setup
    -- For more information, see |:help nvim-dap-ui|
    dapui.setup {
      -- Set icons to characters that are more likely to work in every terminal.
      --    Feel free to remove or use ones that you like more! :)
      --    Don't feel like these are good choices.
      icons = { expanded = '▾', collapsed = '▸', current_frame = '*' },
    }

    vim.api.nvim_set_hl(0, 'DapBreakpoint', { fg = '#eb6f92' })
    vim.fn.sign_define('DapBreakpoint', { text = '󰄯', texthl = 'DapBreakpoint', linehl = '', numhl = '' })

    -- Customize highlights
    vim.api.nvim_set_hl(0, 'DapUINormal', { fg = '#e0def4' })
    vim.api.nvim_set_hl(0, 'DapUIUnavailable', { fg = '#424242' })
    vim.api.nvim_set_hl(0, 'DapUIPlayPause', { fg = '#a3be8c' })
    vim.api.nvim_set_hl(0, 'DapUIStepOver', { fg = '#569fba' })
    vim.api.nvim_set_hl(0, 'DapUIStepInto', { fg = '#569fba' })
    vim.api.nvim_set_hl(0, 'DapUIStepBack', { fg = '#569fba' })
    vim.api.nvim_set_hl(0, 'DapUIStepOut', { fg = '#569fba' })
    vim.api.nvim_set_hl(0, 'DapUIRestart', { fg = '#a3be8c' })
    vim.api.nvim_set_hl(0, 'DapUIStop', { fg = '#eb6f92' })

    -- Remove black background when the debug window is not currently selected
    vim.api.nvim_set_hl(0, 'DapUINormalNC', { fg = '#e0def4' })
    vim.api.nvim_set_hl(0, 'DapUIUnavailableNC', { fg = '#424242' })
    vim.api.nvim_set_hl(0, 'DapUIPlayPauseNC', { fg = '#a3be8c' })
    vim.api.nvim_set_hl(0, 'DapUIStepOverNC', { fg = '#569fba' })
    vim.api.nvim_set_hl(0, 'DapUIStepIntoNC', { fg = '#569fba' })
    vim.api.nvim_set_hl(0, 'DapUIStepBackNC', { fg = '#569fba' })
    vim.api.nvim_set_hl(0, 'DapUIStepOutNC', { fg = '#569fba' })
    vim.api.nvim_set_hl(0, 'DapUIRestartNC', { fg = '#a3be8c' })
    vim.api.nvim_set_hl(0, 'DapUIStopNC', { fg = '#eb6f92' })

    dap.listeners.after.event_initialized['dapui_config'] = dapui.open
    dap.listeners.before.event_terminated['dapui_config'] = dapui.close
    dap.listeners.before.event_exited['dapui_config'] = dapui.close

    -- Install python specific config
    --  if for some reason debugpy is not installed do the following and restart nvim
    --   :MasonInstall debugpy
    require('dap-python').setup '~/.local/share/nvim/mason/packages/debugpy/venv/bin/python'
  end,
}
