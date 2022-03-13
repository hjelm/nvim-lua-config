 require('gitsigns').setup()

 -- Navigation
vim.api.nvim_set_keymap('n', ']c', "&diff ? ']c' : '<cmd>Gitsigns next_hunk<CR>'", {noremap=true})
vim.api.nvim_set_keymap('n', '[c', "&diff ? '[c' : '<cmd>Gitsigns prev_hunk<CR>'", {noremap=true})

 -- Actions
vim.api.nvim_set_keymap('n', '<leader>hs', ':Gitsigns stage_hunk<CR>', {noremap=true})
vim.api.nvim_set_keymap('v', '<leader>hs', ':Gitsigns stage_hunk<CR>', {noremap=true})
vim.api.nvim_set_keymap('n', '<leader>hr', ':Gitsigns reset_hunk<CR>', {noremap=true})
vim.api.nvim_set_keymap('v', '<leader>hr', ':Gitsigns reset_hunk<CR>', {noremap=true})
vim.api.nvim_set_keymap('n', '<leader>hS', '<cmd>Gitsigns stage_buffer<CR>', {noremap=true})
vim.api.nvim_set_keymap('n', '<leader>hu', '<cmd>Gitsigns undo_stage_hunk<CR>', {noremap=true})
vim.api.nvim_set_keymap('n', '<leader>hR', '<cmd>Gitsigns reset_buffer<CR>', {noremap=true})
vim.api.nvim_set_keymap('n', '<leader>hp', '<cmd>Gitsigns preview_hunk<CR>', {noremap=true})
vim.api.nvim_set_keymap('n', '<leader>hb', '<cmd>lua require"gitsigns".blame_line{full=true}<CR>', {noremap=true})
vim.api.nvim_set_keymap('n', '<leader>tb', '<cmd>Gitsigns toggle_current_line_blame<CR>', {noremap=true})
vim.api.nvim_set_keymap('n', '<leader>hd', '<cmd>Gitsigns diffthis<CR>', {noremap=true})
vim.api.nvim_set_keymap('n', '<leader>hD', '<cmd>lua require"gitsigns".diffthis("~")<CR>', {noremap=true})
vim.api.nvim_set_keymap('n', '<leader>td', '<cmd>Gitsigns toggle_deleted<CR>', {noremap=true})

 -- Text object
vim.api.nvim_set_keymap('o', 'ih', ':<C-U>Gitsigns select_hunk<CR>', {noremap=true})
vim.api.nvim_set_keymap('x', 'ih', ':<C-U>Gitsigns select_hunk<CR>', {noremap=true})

