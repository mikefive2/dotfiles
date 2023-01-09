return function(use)
	use({
		--- Markdown Plugins
		"folke/zen-mode.nvim",
		config = function()
			require("zen-mode").setup {}
		end;
		"folke/twilight.nvim",
		"ellisonleao/glow.nvim",
	})
	use({
		-- Nvim Tree
		"nvim-tree/nvim-tree.lua",
		config = function()
			require("nvim-tree").setup {}
		end;
		requires = {
			'nvim-tree/nvim-web-devicons',
		},
		tag = 'nightly',
	})
	use({
		-- Fuzzy Finding Command Line
		"gelguy/wilder.nvim",
		"romgrk/fzy-lua-native",
		"nvim-tree/nvim-web-devicons",
		"nixprime/cpsm",
	})

	use({
		-- Auto Pairing
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup {}
		end
	})
	use({
		-- Terminal in Neovim
		"numToStr/FTerm.nvim",
	})
	use({
		-- Chat Gpt
		"jackMort/ChatGPT.nvim",
		config = function()
			require("chatgpt").setup({
				-- optional configuration
			})
		end,
		requires = {
			"MunifTanjim/nui.nvim",
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope.nvim"
		}
	})
end
