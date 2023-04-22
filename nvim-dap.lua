local dap = require('dap')

dap.adapters.lldb = {
	type = "executable",
	command = "/usr/bin/lldb-vscode",
	name = "lldb",
}

dap.configurations.c = {
    {
        name = "Launch lldb",
        type = "lldb",
        request = "launch",
        program = "${workspaceFolder}/build/scroll",
        cwd = "${workspaceFolder}/build/",
        stopOnEntry = false,
        args = {"30", "1", "abcde ghijklmnopqrstuvwxyz"},
        runInTerminal = true,
        -- console = 'integratedTerminal',
    },
}

