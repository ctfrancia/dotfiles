return {
    'pasky/claude.vim',
    setup = function()
        local file = io.open("~/dotfiles/.config/nvim/lua/ctfrancia/keys/claude.txt", "r")
        if not file then return nil end
        local content = file:read "*a" -- *a or *all reads the whole file
        file:close()

        print(content)

        vim.g.claude_api_key = content
        vim.g.claude_map_implement = "<Leader>ci"
        vim.g.claude_map_open_chat = "<Leader>cc"
        vim.g.claude_map_send_chat_message = "<C-]>"

        vim.g.claude_map_cancel_response = "<Leader>cx"
    end,
}
