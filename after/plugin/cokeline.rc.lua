if packer_plugins["cokeline.nvim"] then

   -- cokeline configuration:
   local get_hex = require('cokeline/utils').get_hex
   local format = string.format
   local keymap = vim.api.nvim_set_keymap

   local nmaps = function(lhs, rhs)
     keymap('n', lhs, rhs, {silent = true})
   end

   for i = 1,9 do
     nmaps(format('<Leader>b%s', i), format('<Plug>(cokeline-focus-%s)', i))
   end

   local saved_indicator = {
     text = '｜',
     hl = {
       fg = function(buffer)
         return
           buffer.is_modified
           and vim.g.terminal_color_3
            or vim.g.terminal_color_2
       end
     },
   }

   local devicon = {
     text = function(buffer) return buffer.devicon.icon .. ' ' end,
     hl = {
       fg = function(buffer) return buffer.devicon.color end,
     },
   }

   local index = {
     text = function(buffer) return buffer.index .. ': ' end,
   }

   local unique_prefix = {
     text = function(buffer) return buffer.unique_prefix end,
     hl = {
       fg = get_hex('Comment', 'fg'),
       style = 'italic',
     },
   }

   local filename = {
     text = function(buffer) return buffer.filename .. ' ' end,
     hl = {
       style = function(buffer) return buffer.is_focused and 'bold' or nil end,
     }
   }

   local modified_indicator = {
     text = function(buffer) return buffer.is_modified and '● ' or '' end,
     hl = {
       fg = vim.g.terminal_color_2,
     }
   }

   local comma = {
     text = function(buffer)
       return (buffer.is_modified and buffer.is_readonly) and ', ' or ''
     end,
   }

   local readonly_indicator = {
     text = function(buffer) return buffer.is_readonly and ' ' or '' end,
     hl = {
       fg = vim.g.terminal_color_1,
     },
   }

   local close_button = {
     text = '',
     delete_buffer_on_left_click = true,
   }

   local space = {
     text = ' ',
   }


   require('cokeline').setup({

     default_hl = {
       focused = {
         fg = get_hex('Normal', 'fg'),
         bg = get_hex('ColorColumn', 'bg'),
       },
       unfocused = {
         fg = get_hex('Comment', 'fg'),
         bg = get_hex('ColorColumn', 'bg'),
       },
     },

     components = {
       saved_indicator,
       devicon,
       index,
       unique_prefix,
       filename,
       -- modified_indicator,
       -- comma,
       -- readonly_indicator,
       -- close_button,
       -- commah,
       space,
     }
   })
end
