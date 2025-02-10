local local_plugin = {
    {
        "mussol",
        dir = "~/Projects/personal/mussol",
        config = function()
            require("mussol").setup()
        end,
    },
}
return local_plugin
