local mapkey = require("util.keymapper").mapkey

local keymap = vim.keymap

local opts = { noremap = true, silent = true }

-- Dir nav
keymap.set("n", "<leader>n", ":NvimTreeToggle<CR>", opts)

-- Pane nav
keymap.set("n", "<leader>v", ":vsplit<CR>", opts)
keymap.set("n", "<leader>s", ":split<CR>", opts)

-- Indent
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- Comment
vim.api.nvim_set_keymap("n", "<leader>/", "gcc", { noremap = false })
vim.api.nvim_set_keymap("v", "<leader>/", "gc", { noremap = false })

-- Tabs
keymap.set("n", "<C-left>", ":tabprevious<CR>", opts)
keymap.set("n", "<C-right>", ":tabnext<CR>", opts)
