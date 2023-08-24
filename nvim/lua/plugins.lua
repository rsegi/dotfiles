return {
	{
    'nvim-telescope/telescope.nvim',
		event = "Bufenter",
  	cmd = { "Telescope" },
    dependencies ={
            {'nvim-lua/plenary.nvim'},
            {"ahmedkhalf/project.nvim"},
        }
	},
	-- {
 --    'olivercederborg/poimandres.nvim',
 --    lazy = false,
 --    priority = 1000,
 --    config = function()
 --        require('poimandres').setup {
	-- 	dim_nc_background = false, -- dim 'non-current' window backgrounds
 --  		disable_background = true, -- disable background
 --  		disable_float_background = false, -- disable background for floats
 --        }
 --    end,
 --    -- optionally set the colorscheme within lazy config
 --    init = function()
 --        vim.cmd("colorscheme poimandres")
 --    end
	-- },
    { 'rose-pine/neovim', name = 'rose-pine' },
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { "c", "lua", "svelte", "python", "cpp", "css", "javascript", "html", "go", "rust", "tsx" },
          sync_install = false,
					auto_install = true,
          highlight = { enable = true, additional_vim_regex_highlighting = false },
          indent = { enable = true },  
        })
    end
	},
	{
		"mbbill/undotree"
	},
	{
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {'williamboman/mason.nvim'},           -- Optional
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},     -- Required
      {'hrsh7th/cmp-nvim-lsp'}, -- Required
      {
            'L3MON4D3/LuaSnip',
                dependencies = { "rafamadriz/friendly-snippets" }
        },     -- Required
    }
  },
    {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    },
    {'hrsh7th/cmp-buffer'},
    { 'saadparwaiz1/cmp_luasnip' },
    { "rafamadriz/friendly-snippets" },
    { 'nvim-tree/nvim-tree.lua' },
    { 'nvim-tree/nvim-web-devicons' },
    {
        'goolord/alpha-nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function ()
            require'alpha'.setup(require'alpha.themes.startify'.config)
        end
    },
    { "RRethy/vim-illuminate" },
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        }
    },
    {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    },
    { "lewis6991/gitsigns.nvim" },
    { "lukas-reineke/indent-blankline.nvim" },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        opts = {} -- this is equalent to setup({}) function
    },
    {
        "ahmedkhalf/project.nvim",
        config = function()
            require("project_nvim").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end,
        dependencies = {      
            "nvim-telescope/telescope.nvim",
            event = "Bufenter",
            cmd = { "Telescope" },
        },
    },
    { 'windwp/nvim-ts-autotag' },
    { 'norcalli/nvim-colorizer.lua' }
}
