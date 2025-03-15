local local_plugin = {
    {
        --[[
        "mussol",
        dir = "~/Projects/personal/mussol",
        opts = {
            targets = {
                { name = "TODO",  wt = 2,  fg = "orange", bg = "none" },
                { name = "FIXME", wt = 10, fg = "yellow", bg = "none" },
                { name = "BUG",   wt = 8,  fg = "red",    bg = "none" },
                { name = "NOTE",  wt = 1,  fg = "blue",   bg = "none" },
            }
        },
    ]]
    },
    {
        "bedrock",
        dir = "~/Projects/tui-ext/bedrock",
        opts = {
            foo = "bar",
            server_path = "/Users/christian.francia/Projects/tui-ext/bedrock/server",
        },
        dependencies = {
            -- "heilgar/nvim-http-client",
        },
    }
}

return local_plugin
