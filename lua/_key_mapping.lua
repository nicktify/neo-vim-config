-- split windows
vim.api.nvim_set_keymap('n', 'vs', ':vs<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', 'sp', ':sp<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-S>', ':%s/', { noremap = true })

-- nvim tree
vim.api.nvim_set_keymap('n', '<C-N>', "<cmd>NvimTreeToggle<CR>", { noremap = true })
-- telescope
vim.api.nvim_set_keymap('n', '<C-P>', "<cmd>lua require('telescope.builtin').git_files()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<C-F>', "<cmd>lua require('telescope.builtin').find_files()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<C-G>', "<cmd>lua require('telescope.builtin').live_grep()<CR>", { noremap = true })

-- coc
vim.api.nvim_set_keymap("n", "K", ":call CocActionAsync('doHover')<CR>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<leader>rn", "<Plug>(coc-rename)", {})
vim.api.nvim_set_keymap("n", "<leader>f", ":CocCommand prettier.formatFile<CR>", {noremap = true})

-- tabs
vim.api.nvim_set_keymap('n', 'tn', ':tabnew<CR>', { noremap = true })
