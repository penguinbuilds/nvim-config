local dap = require('dap')

dap.adapters.cppdbg = {
  id = 'cppdbg',
  type = 'executable',
  command = vim.fn.stdpath("data") .. '/mason/packages/cpptools/extension/debugAdapters/bin/OpenDebugAD7',
}

dap.configurations.cpp = {
  {
    name = "Launch file",
    type = "cppdbg",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = true,
    setupCommands = {
      {
        text = '-enable-pretty-printing',
        description = 'enable pretty printing',
        ignoreFailures = false
      },
    },
  },
}

dap.configurations.c = dap.configurations.cpp

