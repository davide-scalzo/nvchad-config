require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "<Leader>dl", "<cmd>lua require'dap'.step_into()<CR>", { desc = "Step Into"})
map("n", "<Leader>dj", "<cmd>lua require'dap'.step_over()<CR>", { desc = "Step Over"})
map("n", "<Leader>dk", "<cmd>lua require'dap'.step_out()<CR>", { desc = "Step Out"})
map("n", "<Leader>dc", "<cmd>lua require'dap'.continue()<CR>", { desc = "Continue"})
map("n", "<Leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", { desc = "Toggle Breakpoint"})
map("n", "<Leader>dd", "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint Condition: '))<CR>", { desc = "Set Conditional Breakpoint"})

map("n", "<Leader>de", "<cmd>lua require'dap'.terminate()<CR>", { desc = "Debugger reset" })
map("n", "<Leader>dr", "<cmd>lua require'dap'.run_last()<CR>", { desc = "Debugger run last" })

-- rustaceanvim
map("n", "<Leader>dt", "<cmd>lua vim.cmd('RustLsp testables')<CR>", { desc = "Debugger testables" })
