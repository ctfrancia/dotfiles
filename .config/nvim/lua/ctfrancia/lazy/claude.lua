return {
    'pasky/claude.vim',
    lazy = false,
    config = function()
        local keys = require("ctfrancia.keys")



        vim.g.claude_api_key = keys.Claude
        vim.g.claude_map_implement = "<Leader>ci"
        vim.g.claude_map_open_chat = "<Leader>cc"
        vim.g.claude_map_send_chat_message = "<C-]>"

        vim.g.claude_map_cancel_response = "<Leader>cx"
    end,
}
