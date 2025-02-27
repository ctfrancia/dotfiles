return {
    'pasky/claude.vim',
    setup = function()
        vim.notify("Setting up Claude")
        local config_path = vim.fn.stdpath('config')
        local file_path = config_path .. "/../keys/claude.txt"

        local file = io.open(file_path, "r")

        if not file then
            vim.notify("Claude API key not found" .. file_path, vim.log.levels.ERROR)
            return nil
        end

        local content = file:read("*a"):gsub("^%s*(.-)%s*$", "%1") -- Trim whitespace

        file:close()

        vim.notify("Claude API key found, length: ", #content)

        vim.g.claude_api_key = content
        vim.g.claude_map_implement = "<Leader>ci"
        vim.g.claude_map_open_chat = "<Leader>cc"
        vim.g.claude_map_send_chat_message = "<C-]>"

        vim.g.claude_map_cancel_response = "<Leader>cx"
    end,
}
