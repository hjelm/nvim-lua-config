
vim.g.user_emmet_leader_key=','

vim.cmd[[
 let g:far#glob_mode='native'
 let g:far#source='rgnvim'
]]

require('gitsigns').setup()


require('telescope').setup{
--   defaults = {
--     mappings = {
--       n = {
--         ["q"] = actions.close
--       },
--     },
--   }
}

