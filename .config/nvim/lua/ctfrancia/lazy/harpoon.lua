return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    requires = { { "nvim-lua/plenary.nvim" } },
    setup = function()
        local harpoon = require("harpoon")

        harpoon:setup()

        vim.keymap.set("n", "<leader>A", function() harpoon:list():prepend() end)
        vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)

        vim.keymap.set("n", "<C-E>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
    end,
}
