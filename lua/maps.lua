-- vim.api.nvim_set_keymap('x', 'ga', '<Plug>EasyAlign', {noremap = false})
-- vim.api.nvim_set_keymap('n', 'ga', '<Plug>EasyAlign', {noremap = false})
vim.cmd[[xmap ga <Plug>(EasyAlign)]]
vim.cmd[[nmap ga <Plug>(EasyAlign)]]

vim.api.nvim_set_keymap('n', '*', '*N', {noremap = true})
vim.api.nvim_set_keymap('n', '#', '#N', {noremap = true})
vim.api.nvim_set_keymap('n', 'j', 'gj', {noremap = true})
vim.api.nvim_set_keymap('n', 'k', 'gk', {noremap = true})
vim.api.nvim_set_keymap('n', 'Q', '<nop>', {noremap = true})
vim.api.nvim_set_keymap('i', 'jk', '<esc>', {noremap = true})

function _G.ReloadConfig()
    local hls_status = vim.v.hlsearch
    for name,_ in pairs(package.loaded) do
        if name:match('^cnull') then
            package.loaded[name] = nil
        end
    end
    dofile(vim.env.MYVIMRC)
    if hls_status == 0 then
        vim.opt.hlsearch = false
    end
end

require("which-key").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
}

local wk = require("which-key")

wk.register({
    ['<leader>ff'] = {'<cmd>Files<cr>', 'Files'},
    ['<leader>fb'] = {'<cmd>Buffers<cr>', 'Buffers'},
    ['<leader>fw'] = {'<cmd>Windows<cr>', 'Windows'},
    ['<leader>fl'] = {'<cmd>BLines<cr>', 'BLines'},
    ['<leader>fh'] = {'<cmd>History<cr>', 'History'},
    ['<leader>fgc'] = {'<cmd>Commits<cr>', 'Commits'},
    ['<leader>fgb'] = {'<cmd>BCommits<cr>', 'BCommits'},
    ['<leader>fgs'] = {'<cmd>GFiles?<cr>', 'GFiles?'},
    ['<leader>fs'] = {'<cmd>Rg<cr>', 'Rg (ripgrep)'},
    ['<leader>ft'] = {'<cmd>NvimTreeToggle<cr>', 'Nvim-Tree (toggle)'},
})

wk.register({
    ["s"] = { name = "+win" },
    ["sh"] = {"<cmd>split<cr><C-w>w", "win-hsplit"},
    ["sv"] = {"<cmd>vsplit<cr><C-w>w", "win-vsplit"},
    ["sc"] = {"<C-w>c", "win-close"},
    ["smm"] = {"<C-w>_<C-w>|", "win-maximize-all"},
    ["smv"] = {"<C-w>_", "win-maximize-vert"},
    ["smh"] = {"<C-w>|", "win-maximize-hori"},
    ["s,"] = {"<C-w><", "win-resize-left"},
    ["s."] = {"<C-w>>", "win-resize-right"},
    ["se"] = {"<C-w>+", "win-resize-grow"},
    ["sn"] = {"<C-w>-", "win-resize-shrink"},
    ["se"] = {"<C-w>=", "win-resize-equal"},
})

wk.register({
    ["b"] = { name = "+buffer" },
    ["bd"] = {"<cmd>bprevious|bdelete #<cr>", "bdelete"},
})


wk.register({
    ["<leader>g"] = { name = "+git" },
    ["<leader>gb"] = {"<cmd>Git blame<cr>", "git blame"},
    ["<leader>gs"] = {"<cmd>Git status<cr>", "git status"},
    ["<leader>gd"] = {"<cmd>Git diff<cr>", "git diff"},
    ["<leader>gD"] = {"<cmd>Git diff --cached<cr>", "git diff --cached"},
    ["<leader>gv"] = {"<cmd>Gvdiffsplit<cr>", "git diff vertical"},
    ["<leader>ga"] = {"<cmd>Git add %:p<cr>", "git add current file"},
    ["<leader>gl"] = {"<cmd>Git pull<cr>", "git pull"},
    ["<leader>gp"] = {"<cmd>Git push<cr>", "git push"},
    ["<leader>gr"] = {"<cmd>Git branch -v<cr>", "git branch -v"},
})

wk.register({
    ["<leader>e"] = { name = "+default files" },
    ["<leader>en"] = {"<cmd>e ~/dev/notes/zimpler-notes.md<cr>", "edit zimpler-notes.md"},
    ["<leader>ez"] = {"<cmd>e ~/.zshrc<cr>", "edit .zshrc"},
})

wk.register({
    ["<leader>w"] = { name = "+window" },
    ["<leader>ws"] = {"<cmd>WinShift<cr>", "WinShift"},
})

wk.register({
    ["<leader>c"] = { name = "+configuration" },
    ["<leader>cn"] = {"<cmd>FZF ~/.config/nvim/<cr>", "edit neovim confs"},
    ["<leader>cc"] = {"<cmd>lua ReloadConfig()<cr>", "reload conf"},
    ["<leader>ci"] = {"<cmd>e $MYVIMRC<cr>", "edit config"},
    ["<leader>cm"] = {"<cmd>e ~/.config/nvim/lua/maps.lua<cr>", "edit maps.lua"},
    ["<leader>cp"] = {"<cmd>e ~/.config/nvim/lua/plugins.lua<cr>", "edit plugins.lua"},
    ["<leader>crn"] = {"<cmd>e ~/.config/nvim/after/plugin/nvim-tree.rc.lua<cr>", "edit nvim-tree.rc.lua"},
})


-- TODO: rewrite this in lua
vim.cmd[[
nnoremap <leader>vd :lua vim.lsp.buf.definition()<CR>
nnoremap <leader>vi :lua vim.lsp.buf.implementation()<CR>
nnoremap <leader>vsh :lua vim.lsp.buf.signature_help()<CR>
nnoremap <leader>vrr :lua vim.lsp.buf.references()<CR>
nnoremap <leader>vrn :lua vim.lsp.buf.rename()<CR>
nnoremap <leader>vh :lua vim.lsp.buf.hover()<CR>
nnoremap <leader>vca :lua vim.lsp.buf.code_action()<CR>
nnoremap <leader>vsd :lua vim.lsp.diagnostic.show_line_diagnostics(); vim.lsp.util.show_line_diagnostics()<CR>
nnoremap <leader>vp :lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <leader>vn :lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap <leader>vll :call LspLocationList()<CR>
]]

vim.api.nvim_set_keymap('n', 'gi', "<Cmd>lua require'telescope.builtin'.lsp_implementations()<cr>", {noremap = true})
vim.api.nvim_set_keymap('n', 'gh', "<Cmd>lua require'telescope.builtin'.lsp_definitions()<cr>", {noremap = true})
vim.api.nvim_set_keymap('n', 'gs', "<Cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<cr>", {noremap = true})
