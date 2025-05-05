return {
    "epwalsh/obsidian.nvim",
    version = "*",  -- recommended, use latest release instead of latest commit
    lazy = true,
    ft = "markdown",
    mappings = {
        -- Overrides the 'gf' mapping to work on markdown/wiki links within your vault.
        ["gf"] = {
            action = function()
                return require("obsidian").util.gf_passthrough()
            end,
            opts = { noremap = false, expr = true, buffer = true },
        },
        -- Toggle check-boxes.
        ["<leader>ch"] = {
            action = function()
                return require("obsidian").util.toggle_checkbox()
            end,
            opts = { buffer = true },
        },
        -- Smart action depending on context, either follow link or toggle checkbox.
        ["<cr>"] = {
            action = function()
                return require("obsidian").util.smart_action()
            end,
            opts = { buffer = true, expr = true },
        }
    },
    dependencies = {
        -- Required.
        "nvim-lua/plenary.nvim",

        -- see below for full list of optional dependencies 👇
    },
    opts = function()
        local username = vim.fn.system("whoami"):gsub("\n", "")
        local workspace

        if username:match("ctfrancia") then
            workspace = {
                name = "personal",
                path = "/Users/ctfrancia/Library/Mobile Documents/iCloud~md~obsidian/Documents/thoughts",
            }
        else
            workspace = {
                name = "work",
                -- path to private repo vault
                path = "/Users/christian.francia/Projects/personal/notes",
            }
        end

        return {
            workspaces = {workspace},
            -- Add your other options here
            follow_url_func = function(url)
                -- Open the URL in the default web browser.
                vim.fn.jobstart({"open", url})  -- Mac OS
                -- vim.fn.jobstart({"xdg-open", url})  -- linux
            end,
        }
    end,
}
