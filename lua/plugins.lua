return require('packer').startup(function()
    use 'wbthomason/packer.nvim'

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
    use 'tpope/vim-commentary'
    use 'tpope/vim-surround'
    use 'tpope/vim-eunuch'
    -- use 'cohama/lexima.vim'

    use { 'junegunn/fzf', run = 'fzf#install()' }
    use 'junegunn/fzf.vim'

    use 'junegunn/vim-easy-align'
    use { 'fatih/vim-go', run = ':GoUpdateBinaries' }
    use 'mattn/emmet-vim'
    use 'axelf4/vim-strip-trailing-whitespace'
    use 'michaeljsmith/vim-indent-object'
    use 'direnv/direnv.vim'

    use 'numtostr/bufonly.nvim'
    use 'hoob3rt/lualine.nvim'

    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use 'nvim-treesitter/nvim-treesitter-textobjects'
    use 'nvim-treesitter/nvim-treesitter-refactor'

    use 'sindrets/winshift.nvim'
    use 'nvim-telescope/telescope.nvim'

    use 'kyazdani42/nvim-web-devicons'
    use 'kyazdani42/nvim-tree.lua'
    use 'noib3/cokeline.nvim'

    use 'lewis6991/gitsigns.nvim'
    use 'akinsho/nvim-toggleterm.lua'
    use 'folke/which-key.nvim'

    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'

    use 'neovim/nvim-lspconfig'
    use 'onsails/lspkind-nvim'
    use "ray-x/lsp_signature.nvim"

    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/nvim-cmp'

    -- -- For vsnip user.
    --use 'hrsh7th/cmp-vsnip'
    --use 'hrsh7th/vim-vsnip'

    -- For luasnip user.
    use 'l3mon4d3/luasnip'
    use 'saadparwaiz1/cmp_luasnip'

    use "pocco81/autosave.nvim" -- let's try this out
    use 'foosoft/vim-argwrap' -- wrap function arguments with keypress
end)

