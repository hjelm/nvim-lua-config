-- :h lua-vim-options
vim.opt.number = true
vim.opt.termguicolors = true
vim.opt.completeopt='menuone,noinsert,noselect'
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.listchars = {
    nbsp = '_',
    trail = '•',
    tab = '| ',
    extends = '⟩',
    precedes = '⟨',
}
vim.opt.list = true
vim.opt.showbreak = '↪\\'
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.smartcase = true
vim.opt.mouse = 'a'
vim.opt.timeoutlen = 500
vim.g.mapleader = ' '

-- Use OSX clipboard to copy and to paste
vim.cmd[[set clipboard+=unnamedplus]]
vim.cmd[[colorscheme gruvbox8_hard]]

require('plugins')
require('maps')

-- if packer_plugins["vim-fugitive"] and packer_plugins["vim-fugitive"].loaded then
--   print("Vim fugitive is loaded")
--   -- other custom logic
-- end

-- function _G.ReloadConfig()
--     local hls_status = vim.v.hlsearch
--     for name,_ in pairs(package.loaded) do
--         print(name)
--         if name:match('^cnull') then
--             package.loaded[name] = nil
--         end
--     end
--     dofile(vim.env.MYVIMRC)
--     if hls_status == 0 then
--         vim.opt.hlsearch = false
--     end
-- end

