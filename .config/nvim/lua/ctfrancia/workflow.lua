local username = vim.fn.system("whoami"):gsub("\n", "")

-- Create an autocmd that runs when opening a file
vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
    pattern = {"*.md"},
    callback = function()
        local workspace_map = {
            ["christian.francia"] = "work",
            ["ctfrancia"] = "personal",
        }

        local workspace = workspace_map[username] or "ctfrancia"
        vim.cmd("ObsidianWorkspace " .. workspace)
    end,
    desc = "Auto-switch Obsidian workspace based on username"
})
