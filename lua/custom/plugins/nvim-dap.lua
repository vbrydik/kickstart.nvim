-- nvim-dap.lua

return {
  -- plugin name
  'mfussenegger/nvim-dap',
  -- plugin config
  config = function()
    -- set up plugin keymaps
    vim.keymap.set('n', '<F5>', function() require('dap').continue() end)
    vim.keymap.set('n', '<F10>', function() require('dap').step_over() end)
    vim.keymap.set('n', '<F11>', function() require('dap').step_into() end)
    vim.keymap.set('n', '<F12>', function() require('dap').step_out() end)
    vim.keymap.set('n', '<Leader>b', function() require('dap').toggle_breakpoint() end, { desc = 'Toggle [b]reakpoint' })
    vim.keymap.set('n', '<Leader>B', function() require('dap').set_breakpoint() end, { desc = 'Set [B]reakpoint' })
    vim.keymap.set('n', '<Leader>lp', function() require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end)
    vim.keymap.set('n', '<Leader>dr', function() require('dap').repl.open() end)
    vim.keymap.set('n', '<Leader>dl', function() require('dap').run_last() end)
    vim.keymap.set({'n', 'v'}, '<Leader>dh', function()
      require('dap.ui.widgets').hover()
    end)
    -- vim.keymap.set({'n', 'v'}, '<Leader>dp', function()
    --   require('dap.ui.widgets').preview()
    -- end)
    vim.keymap.set('n', '<Leader>df', function()
      local widgets = require('dap.ui.widgets')
      widgets.centered_float(widgets.frames)
    end)
    vim.keymap.set('n', '<Leader>ds', function()
      local widgets = require('dap.ui.widgets')
      widgets.centered_float(widgets.scopes)
    end)

    -- dapui toggle
    vim.keymap.set('n', '<Leader>dt', function() require('dapui').toggle() end, { desc = "[T]oggle debug UI" })

    -- set up nvim-dap for python
    -- local dap = require('dap')
    -- dap.configurations.python = {
    --   {
    --     type = 'python';
    --     request = 'launch';
    --     name = "Launch file";
    --     program = "${file}";
    --     pythonPath = function()
    --       return '/usr/bin/python'
    --     end;
    --   },
    -- }
  end,
}
