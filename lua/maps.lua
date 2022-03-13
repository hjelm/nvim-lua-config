-- vim.api.nvim_set_keymap('x', 'ga', '<Plug>EasyAlign', {noremap = false})
-- vim.api.nvim_set_keymap('n', 'ga', '<Plug>EasyAlign', {noremap = false})
vim.cmd[[xmap ga <Plug>(EasyAlign)]]
vim.cmd[[nmap ga <Plug>(EasyAlign)]]

vim.api.nvim_set_keymap('n', '*', '*N', {noremap = true})
vim.api.nvim_set_keymap('n', '#', '#N', {noremap = true})
vim.api.nvim_set_keymap('n', 'j', 'gj', {noremap = true})
vim.api.nvim_set_keymap('n', 'k', 'gk', {noremap = true})
vim.api.nvim_set_keymap('n', 'Q', '@q', {noremap = true})
vim.api.nvim_set_keymap('i', 'jk', '<esc>', {noremap = true})
vim.api.nvim_set_keymap('n', '<cr>', '"', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>ss', ':s///g<left><left>', {noremap = true})
vim.api.nvim_set_keymap('n', '<c-s>', ':w<cr>', {noremap = true})
vim.api.nvim_set_keymap('i', '<c-s>', '<esc>:w<cr>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>x', ':bprevious|bdelete #<cr>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>X', ':bd<cr>', {noremap = true})
vim.api.nvim_set_keymap('n', '<c-n>', ':cnext<cr>', {noremap = true})
vim.api.nvim_set_keymap('n', '<c-p>', ':cprevious<cr>', {noremap = true})

-- use the same emacs (shell) keybindings for cmdline
vim.api.nvim_set_keymap('c', '<c-a>', '<home>', {noremap = true})
vim.api.nvim_set_keymap('c', '<c-f>', '<right>', {noremap = true})
vim.api.nvim_set_keymap('c', '<c-b>', '<left>', {noremap = true})
vim.api.nvim_set_keymap('c', '<esc>b', '<s-left>', {noremap = true})
vim.api.nvim_set_keymap('c', '<esc>f', '<s-right>', {noremap = true})

-- :cnoremap <Esc>b <S-Left>
-- :cnoremap <Esc>f <S-Right>

-- search for visualy selected text
-- vim.api.nvim_set_keymap('v', '//', 'y/\\V<C-R>=escape(@",\'/\\\')<cr><cr>', {noremap = true})
vim.cmd[[vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>]]

local function qf_list_open()
   local qf_open = false
   for winnr in ipairs(vim.api.nvim_list_wins()) do
      if vim.fn.win_gettype(winnr) == 'quickfix' then
         qf_open = true
      end
   end
   return qf_open
end

function _G.toggle_qf()
   if qf_list_open() then
      vim.cmd[[:cclose]]
   else
      vim.cmd[[:copen]]
   end
end

vim.api.nvim_set_keymap('n', '<leader>q', '<cmd>lua toggle_qf()<cr>', {noremap = true})
-- vim.api.nvim_set_keymap('n', '<leader>l', '<cmd>lua <cr>', {noremap = true})

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

-- if packer_plugins and packer_plugins["which-key.nvim"] and packer_plugins["which-key.nvim"].loaded then

