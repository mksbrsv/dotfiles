require("packer").startup(function()
	use("wbthomason/packer.nvim")
	use("lewis6991/impatient.nvim")
	use("folke/tokyonight.nvim")
	use("nvim-treesitter/nvim-treesitter")
	use("tami5/lspsaga.nvim")
	use("neovim/nvim-lspconfig")
	use("windwp/nvim-autopairs")
	use("nvim-lua/plenary.nvim")
	use("hrsh7th/cmp-nvim-lsp")
	-- use("folke/trouble.nvim")
	use("hrsh7th/cmp-nvim-lua")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/nvim-cmp")
	use({ "tzachar/cmp-tabnine", run = "./install.sh", requires = "hrsh7th/nvim-cmp" })
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")
	use("rafamadriz/friendly-snippets")
	use("onsails/lspkind-nvim")
	use("kyazdani42/nvim-web-devicons")
	use({
		"feline-nvim/feline.nvim",
		tag = "v0.3.3",
	})
	use({
		"akinsho/bufferline.nvim",
		requires = "kyazdani42/nvim-web-devicons",
	})
	use({
		"kyazdani42/nvim-tree.lua",
		requires = "kyazdani42/nvim-web-devicons",
	})
	use({
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use("ray-x/lsp_signature.nvim")
	use({
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	})
	use("windwp/nvim-ts-autotag")
	use("goolord/alpha-nvim")
	use({
		"lewis6991/gitsigns.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
		},
	})
	use("p00f/nvim-ts-rainbow")
	use("rose-pine/neovim")
	use("lukas-reineke/indent-blankline.nvim")
	use("norcalli/nvim-colorizer.lua")
	use("jose-elias-alvarez/null-ls.nvim")
	use("folke/which-key.nvim")
	use("akinsho/toggleterm.nvim")
	use("mfussenegger/nvim-dap")
	use("blackCauldron7/surround.nvim")
end)
