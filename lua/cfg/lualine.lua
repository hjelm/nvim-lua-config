local status, lualine = pcall(require, "lualine")
if (status) then

   local function window()
     return vim.api.nvim_win_get_number(0)
   end

   lualine.setup {
      options = {
         icons_enabled = true,
         theme = 'gruvbox',
         section_separators = {'', ''},
         component_separators = {'', ''},
         disabled_filetypes = {}
      },
      sections = {
        lualine_a = {{window, padding = {left = 1, right = 0}}, 'mode'},
        lualine_b = {'branch'},
        lualine_c = {{'filename', path=1}, 'diff'},
        lualine_x = {{'diagnostics', sources = {"nvim_diagnostic"}, symbols = {error = ' ', warn = ' ', info = ' ', hint = ' '} },
          'encoding',
          'filetype'
        },
        lualine_y = {'progress'},
        lualine_z = {'location'}
      },
      inactive_sections = {
        lualine_a = {{window, padding = {left = 1, right = 0}}},
        lualine_b = {},
        lualine_c = {{'filename', path=2}},
        lualine_x = {},
        lualine_y = {},
       lualine_z = {}
      },
      tabline = {},
      extensions = {'fugitive', 'fzf', 'nvim-tree', 'quickfix'}
   }
end

