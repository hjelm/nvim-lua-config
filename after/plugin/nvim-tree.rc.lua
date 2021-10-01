
require('nvim-tree').setup {
  -- closes neovim automatically when the tree is the last **WINDOW** in the view
  auto_close = true,
  view = {
    width = 40
  }
}
vim.g.nvim_tree_disable_window_picker = 1

local status, lualine = pcall(require, "lualine")
if (status) then
    lualine.setup {
      options = {
        icons_enabled = true,
        theme = 'solarized_dark',
        section_separators = {'', ''},
        component_separators = {'', ''},
        disabled_filetypes = {}
      },
      sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch'},
        lualine_c = {{'filename', path=1}, 'diff'},
        lualine_x = {{'diagnostics', sources = {"nvim_lsp"}, symbols = {error = ' ', warn = ' ', info = ' ', hint = ' '} },
          'encoding',
          'filetype'
        },
        lualine_y = {'progress'},
        lualine_z = {'location'}
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {{'filename', path=2}},
        lualine_x = {'location'},
        lualine_y = {},
       lualine_z = {}
      },
      tabline = {},
      extensions = {'fugitive'}
    }
end

