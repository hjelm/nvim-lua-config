require("which-key").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
}

local wk = require("which-key")

wk.register({
    ["a"] = { name = "+text operations" },
    ['<leader>aw'] = {'<cmd>ArgWrap<cr>', 'ArgWrap'},
})

-- wk.register({
--     ["q"] = { name = "+quickfix list" },
--     ['<leader>qq'] = {'<cmd>copen<cr>', 'open quickfix list'},
--     ['<leader>qc'] = {'<cmd>cclose<cr>', 'close quickfix list'},
-- })

-- wk.register({
--     ["l"] = { name = "+location list" },
--     ['<leader>ll'] = {'<cmd>lopen<cr>', 'open location list'},
--     ['<leader>lc'] = {'<cmd>lclose<cr>', 'close location list'},
-- })

wk.register({
    ["f"] = { name = "+files" },
    -- ['<leader>ff'] = {'<cmd>Files<cr>', 'Files'},
    -- ['<leader>fb'] = {'<cmd>Buffers<cr>', 'Buffers'},
    ['<leader>ff'] = {'<cmd>Telescope find_files<cr>', 'Files'},
    -- ['<leader>fh'] = {'<cmd>History<cr>', 'History'},
    ['<leader>fgc'] = {'<cmd>Commits<cr>', 'Commits'},
    ['<leader>fgb'] = {'<cmd>BCommits<cr>', 'BCommits'},
    ['<leader>fgs'] = {'<cmd>GFiles?<cr>', 'GFiles?'},
    -- ['<leader>fs'] = {'<cmd>Rg<cr>', 'Rg (ripgrep)'},
    ['<leader>fs'] = {'<cmd>Telescope live_grep<cr>', 'Rg (ripgrep)'},
    ['<leader>ft'] = {'<cmd>NvimTreeFindFileToggle<cr>', 'Nvim-Tree (File Toggle)'},
    ['<leader>fj'] = {'<cmd>NvimTreeFindFile<cr>', 'Nvim-Tree (File Jump)'},
})

wk.register({
    ["<leader>b"] = { name = "+buffer" },
    ['<leader>bb'] = {'<cmd>Telescope buffers<cr>', 'Buffers'},
    ["<leader>bd"] = {"<cmd>bprevious|bdelete #<cr>", "bdelete"},
    ["<leader>bm"] = {"<cmd>Bdelete menu<cr>", "Bdelete menu"},
    ["<leader>bp"] = {"<cmd>BufferLinePick<cr>", "buf pick"},
    ["<leader>b1"] = {"<cmd>BufferLineGoToBuffer 1<cr>", "buf 1"},
    ["<leader>b2"] = {"<cmd>BufferLineGoToBuffer 2<cr>", "buf 2"},
    ["<leader>b3"] = {"<cmd>BufferLineGoToBuffer 3<cr>", "buf 3"},
    ["<leader>b4"] = {"<cmd>BufferLineGoToBuffer 4<cr>", "buf 4"},
    ["<leader>b5"] = {"<cmd>BufferLineGoToBuffer 5<cr>", "buf 5"},
    ["<leader>b6"] = {"<cmd>BufferLineGoToBuffer 6<cr>", "buf 6"},
    ["<leader>b7"] = {"<cmd>BufferLineGoToBuffer 7<cr>", "buf 7"},
    ["<leader>b8"] = {"<cmd>BufferLineGoToBuffer 8<cr>", "buf 8"},
    ["<leader>b9"] = {"<cmd>BufferLineGoToBuffer 9<cr>", "buf 9"},
})

wk.register({
    ["<leader>d"] = { name = "+dap debugging" },
    ["<leader>db"] = {"<cmd>lua require'dap'.toggle_breakpoint()<cr>", "toggle breakpoint"},
    ["<leader>dc"] = {"<cmd>lua require'dap'.continue()<cr>", "continue"},
    ["<leader>dr"] = {"<cmd>lua require'dap'.repl.open()<cr>", "repl open"},
    ["<leader>dl"] = {"<cmd>lua require'dap'.run_last()<cr>", "run last"},
    ["<leader>ds"] = {"<cmd>lua require'dap'.step_over()<cr>", "step over"},
    ["<leader>di"] = {"<cmd>lua require'dap'.step_into()<cr>", "step into"},
    ["<leader>do"] = {"<cmd>lua require'dap'.step_out()<cr>", "step out"},
})

 -- nnoremap <silent> <leader>B :lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>
 -- nnoremap <silent> <leader>lp :lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>


wk.register({
    ["<leader>g"] = { name = "+git" },
    ["<leader>gg"] = {"<cmd>Git<cr>", "git"},
    ["<leader>gb"] = {"<cmd>Git blame<cr>", "git blame"},
    -- ["<leader>gs"] = {"<cmd>Git status<cr>", "git status"},
    ["<leader>gss"] = {"<cmd>lua require'telescope.builtin'.git_status()<cr>", "git status"},
    ["<leader>gsd"] = {"<cmd>lua require'telescope.builtin'.git_stash_diff()<cr>", "git stash diff"},
    ["<leader>gsl"] = {"<cmd>lua require'telescope.builtin'.git_stash()<cr>", "git stash list"},
    ["<leader>gc"] = {"<cmd>lua require'telescope.builtin'.git_commits()<cr>", "git commits"},
    ["<leader>gd"] = {"<cmd>Git diff<cr>", "git diff"},
    ["<leader>gD"] = {"<cmd>Git diff --cached<cr>", "git diff --cached"},
    ["<leader>gv"] = {"<cmd>Gvdiffsplit<cr>", "git diff vertical"},
    ["<leader>ga"] = {"<cmd>Git add %:p<cr>", "git add current file"},
    ["<leader>gpl"] = {"<cmd>Git pull<cr>", "git pull"},
    ["<leader>gps"] = {"<cmd>Git push<cr>", "git push"},
    ["<leader>gr"] = {"<cmd>Git branch -v<cr>", "git branch -v"},
    ["<leader>glg"] = {"<cmd>Git log<cr>", "git log"},
})

wk.register({
    ["<leader>e"] = { name = "+default files" },
    ["<leader>en"] = {"<cmd>e ~/dev/notes/zimpler-notes.md<cr>", "edit zimpler-notes.md"},
    ["<leader>ez"] = {"<cmd>e ~/.zshrc<cr>", "edit .zshrc"},
})

wk.register({
    ["<leader>n"] = { name = "+harpooN" },
    ["<leader>na"] = {"<cmd>lua require('harpoon.mark').add_file()<cr>", "add file"},
    ["<leader>nn"] = {"<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", "open harpoon"},
    ["<leader>n1"] = {"<cmd>lua require('harpoon.ui').nav_file(1)<cr>", "file 1"},
    ["<leader>n2"] = {"<cmd>lua require('harpoon.ui').nav_file(2)<cr>", "file 2"},
    ["<leader>n3"] = {"<cmd>lua require('harpoon.ui').nav_file(3)<cr>", "file 3"},
    ["<leader>n4"] = {"<cmd>lua require('harpoon.ui').nav_file(4)<cr>", "file 4"},
    ["<leader>n5"] = {"<cmd>lua require('harpoon.ui').nav_file(5)<cr>", "file 5"},
    ["<leader>n6"] = {"<cmd>lua require('harpoon.ui').nav_file(6)<cr>", "file 6"},
    ["<leader>n7"] = {"<cmd>lua require('harpoon.ui').nav_file(7)<cr>", "file 7"},
    ["<leader>n8"] = {"<cmd>lua require('harpoon.ui').nav_file(8)<cr>", "file 8"},
    ["<leader>n9"] = {"<cmd>lua require('harpoon.ui').nav_file(9)<cr>", "file 9"},
})


-- wk.register({
--     ["s"] = { name = "+win" },
--     ["sh"] = {"<cmd>split<cr><C-w>w", "win-hsplit"},
--     ["sv"] = {"<cmd>vsplit<cr><C-w>w", "win-vsplit"},
--     ["sc"] = {"<C-w>c", "win-close"},
--     ["smm"] = {"<C-w>_<C-w>|", "win-maximize-all"},
--     ["smv"] = {"<C-w>_", "win-maximize-vert"},
--     ["smh"] = {"<C-w>|", "win-maximize-hori"},
--     ["s,"] = {"<C-w><", "win-resize-left"},
--     ["s."] = {"<C-w>>", "win-resize-right"},
--     ["se"] = {"<C-w>+", "win-resize-grow"},
--     ["sn"] = {"<C-w>-", "win-resize-shrink"},
    -- ["se"] = {"<C-w>=", "win-resize-equal"},
-- })

wk.register({
    ["<leader>w"] = { name = "+win" },
    ["<leader>ws"] = {"<cmd>WinShift<cr>", "WinShift"},
    ["<leader>w1"] = {"<cmd>1wincmd w<cr>", "win 1"},
    ["<leader>w2"] = {"<cmd>2wincmd w<cr>", "win 2"},
    ["<leader>w3"] = {"<cmd>3wincmd w<cr>", "win 3"},
    ["<leader>w4"] = {"<cmd>4wincmd w<cr>", "win 4"},
    ["<leader>w5"] = {"<cmd>5wincmd w<cr>", "win 5"},
    ["<leader>w6"] = {"<cmd>6wincmd w<cr>", "win 6"},
    ["<leader>w7"] = {"<cmd>7wincmd w<cr>", "win 7"},
    ["<leader>w8"] = {"<cmd>8wincmd w<cr>", "win 8"},
    ["<leader>w9"] = {"<cmd>9wincmd w<cr>", "win 9"},
})

wk.register({
    ["<leader>c"] = { name = "+conf" },
    ["<leader>cn"] = {"<cmd>FZF ~/.config/nvim/<cr>", "edit neovim confs"},
    ["<leader>cc"] = {"<cmd>lua ReloadConfig()<cr>", "reload conf"},
    ["<leader>ci"] = {"<cmd>e $MYVIMRC<cr>", "edit config"},
    ["<leader>cm"] = {"<cmd>e ~/.config/nvim/lua/maps.lua<cr>", "edit maps.lua"},
    ["<leader>cp"] = {"<cmd>e ~/.config/nvim/lua/plugins.lua<cr>", "edit plugins.lua"},
    ["<leader>crn"] = {"<cmd>e ~/.config/nvim/after/plugin/nvim-tree.rc.lua<cr>", "edit nvim-tree.rc.lua"},
})
-- end
