-- vim.api.nvim_set_keymap('x', 'ga', '<Plug>EasyAlign', {noremap = false})
-- vim.api.nvim_set_keymap('n', 'ga', '<Plug>EasyAlign', {noremap = false})
vim.cmd [[xmap ga <Plug>(EasyAlign)]]
vim.cmd [[nmap ga <Plug>(EasyAlign)]]

vim.keymap.set('n', '*', '*N')
vim.keymap.set('n', '#', '#N')
vim.keymap.set('n', 'j', 'gj')
vim.keymap.set('n', 'k', 'gk')
vim.keymap.set('i', 'jk', '<esc>')
vim.keymap.set('n', '<cr>', '"')
vim.keymap.set('n', '<leader>ss', ':s///g<left><left>')
vim.keymap.set('n', '<c-s>', ':w<cr>')
vim.keymap.set('i', '<c-s>', '<esc>:w<cr>')
vim.keymap.set('n', '<leader>c', ':bprevious|bdelete #<cr>')
vim.keymap.set('n', '<leader>C', ':bd<cr>')
vim.keymap.set('n', '<c-n>', ':cnext<cr>')
vim.keymap.set('n', '<c-p>', ':cprevious<cr>')
vim.keymap.set('n', 'gp', '`[v`]')

-- use the same emacs (shell) keybindings for cmdline
vim.keymap.set('c', '<c-a>', '<home>')
vim.keymap.set('c', '<c-f>', '<right>')
vim.keymap.set('c', '<c-b>', '<left>')
vim.keymap.set('c', '<esc>b', '<s-left>')
vim.keymap.set('c', '<esc>f', '<s-right>')

-- :cnoremap <Esc>b <S-Left>
-- :cnoremap <Esc>f <S-Right>

-- search for visualy selected text
-- vim.api.nvim_set_keymap('v', '//', 'y/\\V<C-R>=escape(@",\'/\\\')<cr><cr>', {remap = false})
vim.cmd [[vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>]]

local function qf_list_open()
  local qf_open = false
  for winnr in ipairs(vim.api.nvim_list_wins()) do
    if vim.fn.win_gettype(winnr) == 'quickfix' then
      qf_open = true
    end
  end
  return qf_open
end

function toggle_qf()
  if qf_list_open() then
    vim.cmd [[:cclose]]
  else
    vim.cmd [[:copen]]
  end
end

vim.keymap.set('n', '<leader>q', toggle_qf)
