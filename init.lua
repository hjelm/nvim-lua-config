require('impatient')

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
vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.mouse = 'a'
vim.opt.timeoutlen = 500
vim.opt.linebreak = true
vim.opt.wrapscan = false
vim.g.mapleader = ' '

vim.cmd[[
" Use OSX clipboard to copy and to paste
set clipboard+=unnamedplus
colorscheme gruvbox
hi Normal guifg=#ebdbb2 guibg=#1d2021 gui=NONE cterm=NONE
syntax on
set grepprg=rg\ --vimgrep
set grepformat=%f:%l:%c:%m
command! LogDate put =strftime('# %Y-%m-%d %A')
]]

require('plugins')
require('maps')

