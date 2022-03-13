local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  print("Cloning Packer to:", install_path)
  packer_bootstrap = vim.fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.api.nvim_command('packadd packer.nvim')
end

return require('packer').startup(function()
   use 'wbthomason/packer.nvim'

   -- themes
   use {
      'ellisonleao/gruvbox.nvim',
      requires = { 'rktjmp/lush.nvim' }
   }

   -- fundamentals
   use 'tpope/vim-fugitive'
   use 'tpope/vim-rhubarb'
   use 'tpope/vim-unimpaired'
   use 'tpope/vim-repeat'
   use 'tpope/vim-surround'
   use 'tpope/vim-eunuch'

   use 'joosepalviste/nvim-ts-context-commentstring'

   use {
      'numtostr/comment.nvim',
      config="require('cfg/comment')"
   }

   use 'unblevable/quick-scope'

   use {
      'junegunn/fzf',
      require='junegunn/fzf.vim',
      run='fzf#install()'
   }

   use 'junegunn/vim-easy-align'
   use {'fatih/vim-go', run = ':GoUpdateBinaries'}
   -- use 'mattn/emmet-vim'
   use 'axelf4/vim-strip-trailing-whitespace'
   use 'kana/vim-textobj-user'
   use 'julian/vim-textobj-variable-segment'
   use 'michaeljsmith/vim-indent-object'
   use 'direnv/direnv.vim'

   use 'asheq/close-buffers.vim'

   use {
      'nvim-lualine/lualine.nvim',
      config="require('cfg/lualine')"
   }

   use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate',
      config="require('cfg/treesitter')"
   }
   use 'nvim-treesitter/nvim-treesitter-textobjects'
   use 'nvim-treesitter/nvim-treesitter-refactor'

   use 'nvim-lua/popup.nvim'
   use 'nvim-lua/plenary.nvim'

   use 'sindrets/winshift.nvim'
   use {
     'nvim-telescope/telescope.nvim',
     requires = 'nvim-lua/plenary.nvim',
     config="require('cfg/telescope')"
   }

   use {
      'kyazdani42/nvim-tree.lua',
      requires = 'kyazdani42/nvim-web-devicons',
      config="require('cfg/nvim-tree')"
   }
   use {
      'akinsho/bufferline.nvim',
      requires = 'kyazdani42/nvim-web-devicons',
      config="require('cfg/bufferline')"
   }

   use {
      'lewis6991/gitsigns.nvim',
      requires = { 'nvim-lua/plenary.nvim' },
      config="require('cfg/gitsigns')"
   }

   use 'akinsho/nvim-toggleterm.lua'
   use {
      'folke/which-key.nvim',
      config="require('cfg/wk')"
   }

   use {
      'neovim/nvim-lspconfig',
      config="require('cfg/lspconfig')"
   }
   use 'onsails/lspkind-nvim'
   use "ray-x/lsp_signature.nvim"

   use {
      'hrsh7th/nvim-cmp',
      config="require('cfg/cmp')"
   }
   use 'hrsh7th/cmp-nvim-lsp'
   use 'hrsh7th/cmp-buffer'

   use {
      'jose-elias-alvarez/null-ls.nvim'
   }
   use {
      'muniftanjim/prettier.nvim',
      config="require('cfg/prettier')"
   }

   -- For luasnip user.
   use 'l3mon4d3/luasnip'
   use 'saadparwaiz1/cmp_luasnip'

   use 'foosoft/vim-argwrap' -- wrap function arguments with keypress

   use 'dyng/ctrlsf.vim'
   use {
      'brooth/far.vim',
      config="require('cfg/far')"
   }

   use 'rhysd/clever-f.vim'

   -- use 'romainl/vim-qf'
   -- use 'kevinhwang91/nvim-bqf'
   -- use 'itchyny/vim-qfedit'
   use 'stefandtw/quickfix-reflector.vim'

   -- use 'gabrielpoca/replacer.nvim'

   use 'theprimeagen/harpoon'
   use 'kosayoda/nvim-lightbulb'

   --use 'rhysd/vim-grammarous'
   --use 'vigoux/languagetool.nvim'
   -- use {
   --    "brymer-meneses/grammar-guard.nvim",
   --    requires = {
   --       "neovim/nvim-lspconfig",
   --       "williamboman/nvim-lsp-installer"
   --    }
   -- }

   use {
      'mfussenegger/nvim-dap',
      config="require('cfg/dap')"

   }
   use 'rcarriga/nvim-dap-ui'
   use 'thehamsta/nvim-dap-virtual-text'
   use 'stevearc/dressing.nvim'

   use {
      'rcarriga/nvim-notify',
      config="require('cfg/nvim-notify')"
   }

  if packer_bootstrap then
    require('packer').sync()
  end
end)

