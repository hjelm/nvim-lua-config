return require('packer').startup(function(use)
   use 'wbthomason/packer.nvim'

   use 'lewis6991/impatient.nvim'

   -- themes
   use 'shaunsingh/nord.nvim'
   use 'folke/tokyonight.nvim'
   use 'marko-cerovac/material.nvim'
   use 'joshdick/onedark.vim'
   use 'lifepillar/vim-gruvbox8'
   use {'ellisonleao/gruvbox.nvim', requires = {'rktjmp/lush.nvim'}}

   -- fundamentals
   use 'tpope/vim-fugitive'
   use 'tpope/vim-rhubarb'
   use 'tpope/vim-unimpaired'
   use 'tpope/vim-repeat'
   use 'tpope/vim-surround'
   use 'tpope/vim-eunuch'

   use 'joosepalviste/nvim-ts-context-commentstring'
   use 'numToStr/comment.nvim'

   use 'unblevable/quick-scope'

   use {'junegunn/fzf', run = 'fzf#install()'}
   use 'junegunn/fzf.vim'

   use 'junegunn/vim-easy-align'
   use {'fatih/vim-go', run = ':GoUpdateBinaries'}
   -- use 'mattn/emmet-vim'
   use 'axelf4/vim-strip-trailing-whitespace'
   use 'kana/vim-textobj-user'
   use 'julian/vim-textobj-variable-segment'
   use 'michaeljsmith/vim-indent-object'
   use 'direnv/direnv.vim'

   use { 'prettier/vim-prettier', run = 'yarn install' }

   use 'asheq/close-buffers.vim'

   -- use 'hoob3rt/lualine.nvim'
   -- use 'shadmansaleh/lualine.nvim'
   --use 'hjelm/lualine.nvim'
   use 'nvim-lualine/lualine.nvim'

   use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
   use 'nvim-treesitter/nvim-treesitter-textobjects'
   use 'nvim-treesitter/nvim-treesitter-refactor'

   use 'sindrets/winshift.nvim'
   use 'nvim-telescope/telescope.nvim'

   use 'kyazdani42/nvim-web-devicons'
   use 'kyazdani42/nvim-tree.lua'
   --use 'noib3/cokeline.nvim'
   use 'akinsho/bufferline.nvim'

   use 'lewis6991/gitsigns.nvim'
   use 'akinsho/nvim-toggleterm.lua'
   use 'folke/which-key.nvim'

   use 'nvim-lua/popup.nvim'
   use 'nvim-lua/plenary.nvim'

   use 'neovim/nvim-lspconfig'
   use 'onsails/lspkind-nvim'
   use "ray-x/lsp_signature.nvim"

   use 'hrsh7th/nvim-cmp'
   use 'hrsh7th/cmp-nvim-lsp'
   use 'hrsh7th/cmp-buffer'

   -- For luasnip user.
   use 'l3mon4d3/luasnip'
   use 'saadparwaiz1/cmp_luasnip'

   -- use "pocco81/autosave.nvim" -- let's try this out
   use 'foosoft/vim-argwrap' -- wrap function arguments with keypress

   use 'dyng/ctrlsf.vim'
   use 'brooth/far.vim'

   use 'rhysd/clever-f.vim'

   -- use 'romainl/vim-qf'
   -- use 'kevinhwang91/nvim-bqf'
   use 'itchyny/vim-qfedit'

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

   use 'mfussenegger/nvim-dap'
   use 'rcarriga/nvim-dap-ui'
   use 'thehamsta/nvim-dap-virtual-text'

   use 'stevearc/dressing.nvim'
   use 'rcarriga/nvim-notify'

end)

