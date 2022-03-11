
vim.g.user_emmet_leader_key=','

vim.cmd[[
 let g:far#glob_mode='native'
 let g:far#source='rgnvim'
]]


require('telescope').setup{
   defaults = {
      layout_strategy = 'vertical',
      layout_config = {
         vertical = { width = 0.95 }
      },
   }
}

vim.notify = require("notify")

require("bufferline").setup{
   options = {
      numbers = function(opts)
         return string.format('%s', opts.ordinal)
      end
   }
}
