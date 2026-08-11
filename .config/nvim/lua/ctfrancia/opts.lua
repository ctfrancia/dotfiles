--basic settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.wrap = false
vim.opt.scrolloff = 10 -- how low the cursor will get before scroll down goes
vim.opt.sidescrolloff = 8

-- Indentation
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true --use spaces instead of tabs
vim.opt.smartindent = true
vim.opt.autoindent = true

-- Search Settings
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false --Don't highlight search results
vim.opt.incsearch = true -- show matches as you type

-- Visual settings
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "100" -- show column at 100 characters
vim.opt.showmatch = true
vim.opt.matchtime = 2
vim.opt.cmdheight = 1
vim.opt.completeopt = "menuone,noinsert,noselect" -- vompletion options
vim.opt.showmode = false                          -- don't show mode in command line
vim.opt.pumheight = 10
vim.opt.pumblend = 10
vim.opt.winblend = 0       -- floating window transparency
vim.opt.conceallevel = 0   -- don't hide markup
vim.opt.concealcursor = "" -- don't hide cursor line markup
-- vim.opt.lazyredraw removed in Neovim 0.13 (redraw is now always optimized)
vim.opt.synmaxcol = 300    -- syntax highlighting limit

-- File handling
vim.opt.backup = false    -- don't create a backup files
vim.opt.writebackup = false
vim.opt.swapfile = false  -- don't create swap files
vim.opt.undofile = true   -- persistent undo
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.updatetime = 300  -- faster update time
vim.opt.timeoutlen = 500  -- key timeout duration
vim.opt.ttimeoutlen = 0   --key code timeout
vim.opt.autoread = true   -- auto reload files changes outside vim
vim.opt.autowrite = false -- don't autosave

-- Behavior settings
vim.opt.hidden = true                  -- allow hidden buffers
vim.opt.errorbells = false             -- no error bells
vim.opt.backspace = "indent,eol,start" -- better backspace behavior
vim.opt.autochdir = false              -- don't auto change dir
vim.opt.iskeyword:append("-")          --trear dash as part of word
vim.opt.path:append("**")              --inclue subdirectories in search
vim.opt.selection = "exclusive"
vim.opt.mouse = "a"                    -- enable mouse support
vim.opt.modifiable = true              -- allow buffer modifications
vim.opt.encoding = "UTF-8"
vim.opt.nu = true
vim.opt.conceallevel = 1

vim.opt.isfname:append("@-@")

-- makes it so that you can yank to system clipboard
-- vim.opt.clipboard = "unnamed"
--[[
vim.keymap.set({ 'n', 'v' }, '<leader>y', '"+y', { desc = 'Yank to system clipboard' })
vim.keymap.set({ 'n', 'v' }, '<leader>Y', '"+Y', { desc = 'Yank line to system clipboard' })
vim.keymap.set({ 'n', 'v' }, '<leader>p', '"+p', { desc = 'Paste from system clipboard' })
vim.keymap.set({ 'n', 'v' }, '<leader>P', '"+P', { desc = 'Paste before from system clipboard' })
]]

-- Delete without yanking using the black hole register
vim.keymap.set('n', 'dd', '"_dd', { desc = 'Delete line without yanking' })
vim.keymap.set('v', 'd', '"_d', { desc = 'Delete without yanking' })
vim.keymap.set('v', 'x', '"_x', { desc = 'Delete char without yanking' })

-- vim.opt.foldmethod = "indent"
