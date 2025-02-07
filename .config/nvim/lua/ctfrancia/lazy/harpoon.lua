return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    requires = { { "nvim-lua/plenary.nvim" } },
    setup = function()
        local harpoon = require("harpoon")

        vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
        vim.keymap.set("n", "<C-E>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
    end,
}
