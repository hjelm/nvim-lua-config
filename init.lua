-- :h lua-vim-options
vim.opt.number = true
vim.opt.relativenumber = true
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
vim.opt.autowrite = true
vim.opt.hidden = true
-- vim.opt.confirm = true
vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.mouse = 'a'
vim.opt.timeoutlen = 500
vim.opt.linebreak = true
vim.opt.inccommand = 'nosplit'
vim.opt.wrapscan = false
vim.g.mapleader = ' '

-- Use OSX clipboard to copy and to paste
vim.cmd[[set clipboard+=unnamedplus]]
vim.cmd[[colorscheme gruvbox8_hard]]
vim.cmd[[syntax on]]
vim.cmd[[set grepprg=rg\ --vimgrep]]
vim.cmd[[set grepformat=%f:%l:%c:%m]]

require('plugins')
require('maps')

