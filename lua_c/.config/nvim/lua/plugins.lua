-- PACKER PACKAGE MANAGEMENT
require('packer').startup({function()
    use 'wbthomason/packer.nvim'
    use 'ellisonleao/gruvbox.nvim'
    use 'sainnhe/gruvbox-material'
    use 'tamton-aquib/staline.nvim'
    use 'uga-rosa/ccc.nvim'
    use 'rmehri01/onenord.nvim'
    use 'navarasu/onedark.nvim'
    use 'kyazdani42/nvim-web-devicons'
    use 'nvim-lua/plenary.nvim'
    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
      requires = { 'nvim-lua/plenary.nvim', opt = true }
    }
    use {
    	'akinsho/bufferline.nvim', 
    	tag = "v2.*", 
    	requires = 'kyazdani42/nvim-web-devicons'
    }
    use {
      'akinsho/toggleterm.nvim', tag = '*'
    }
    use {
      'kyazdani42/nvim-tree.lua',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use {
        'goolord/alpha-nvim',
        requires = { 'kyazdani42/nvim-web-devicons' },
--        config = function ()
--            require'alpha'.setup(require'alpha.themes.startify'.config)
--        end
    }
    use 'mattn/emmet-vim'
    use 'norcalli/nvim-colorizer.lua'
    use 'nvim-treesitter/nvim-treesitter'
    use 'p00f/nvim-ts-rainbow'	
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'folke/which-key.nvim'
    use 'numToStr/Comment.nvim'
    -- LuaSnip
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    use 'rafamadriz/friendly-snippets'	
    use 'windwp/nvim-ts-autotag'
    use 'windwp/nvim-autopairs'
    use 'lukas-reineke/indent-blankline.nvim'
    use 'folke/twilight.nvim'
    use 'folke/zen-mode.nvim'
    use 'luukvbaal/nnn.nvim'
    use 'nacro90/numb.nvim'
    use 'neovim/nvim-lspconfig'
    use {
        "kylechui/nvim-surround",
        tag = "*", 
        }
    -- other packages
end, 
  config = {
    display = {
      open_fn = function() 
        return require('packer.util').float({ border = 'double' })
      end
    }
}})

--[[
template, you can use configurations within plugins
require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'ellisonleao/gruvbox.nvim'
    use {                          -- the plugin and the config is put between curly brackets
    	'vimwiki/vimwiki',
    	config = function(
    		some function
    	)
    }
      end
    -- other packages
end)
]]--
