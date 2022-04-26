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
vim.opt.clipboard = 'unnamedplus'
vim.opt.grepprg = 'rg --vimgrep'
vim.opt.grepformat = '%f:%l:%c:%m'


vim.cmd[[ silent! colorscheme gruvbox ]]

vim.api.nvim_create_user_command("LogDate", function()
    vim.api.nvim_command("put =strftime('# %Y-%m-%d %A')")
end, {})

