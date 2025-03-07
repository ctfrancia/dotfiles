local local_plugin = {
    {
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
    },
}

return local_plugin
