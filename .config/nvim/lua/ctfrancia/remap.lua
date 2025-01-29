vim.g.mapleader=" "

vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
-- vim.keymap.set("v", "<leader>y", "\"*y")
-- vim.keymap.set("v", "<leader>p", "\"*p")

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
--[[
vim.keymap.set("n", "<C-J>", "<C-W><C-J>")
vim.keymap.set("n", "<C-H>", "<C-W><C-H>")
vim.keymap.set("n", "<C-K>", "<C-W><C-K>")
vim.keymap.set("n", "<C-L>", "<C-W><C-L>")
]]
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

vim.keymap.set('n', '<leader>r', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<leader>a', vim.lsp.buf.code_action, opts)

vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("i", "kj", "<Esc>")

vim.keymap.set("x", "<leader>p", [["_dP]])

vim.g.tmux_navigator_no_mappings = 1

vim.keymap.set("n", "<C-H>", ":TmuxNavigateLeft<cr>", {silent = true})
vim.keymap.set("n", "<C-J>", ":TmuxNavigateDown<cr>" , {silent = true})
vim.keymap.set("n", "<C-K>", ":TmuxNavigateUp<cr>", {silent = true})
vim.keymap.set("n", "<C-L>", ":TmuxNavigateRight<cr>", {silent = true})
