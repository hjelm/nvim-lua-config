require 'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = false,
    disable = {},
  },
  ensure_installed = {
    "tsx",
    "yaml",
    "toml",
    "lua",
    "json",
    "html",
    "scss",
    "python",
    "go",
  },
  refactor = {
    smart_rename = {
      enable = true,
      keymaps = {
        smart_rename = "<leader>lr",
      },
    },
  },
  context_commentstring = {
    enable = true
  },
  textobjects = {
    select = {
      enable = true,

      -- Automatically jump forward to textobj, similar to targets.vim
      lookahead = true,

      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = "@class.inner",
      },
    },
  },
}

local ft_to_parser = require "nvim-treesitter.parsers".filetype_to_parsername
ft_to_parser.tsx = { "javascript", "typescript.tsx" }


