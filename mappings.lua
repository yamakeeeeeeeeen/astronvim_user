-- redo
vim.api.nvim_set_keymap("n", "<S-u>", "<C-r>", { noremap = true })

-- copilot
vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<C-i>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
