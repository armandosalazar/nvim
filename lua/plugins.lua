-- vim settings
-- vim.cmd[[colorscheme tokyonight-night]]
-- vim.cmd[[colorscheme everforest]]
-- vim.cmd[[colorscheme edge]]
-- vim.cmd[[colorscheme gruvbox-material]]
-- vim.cmd[[colorscheme sonokai]]
vim.cmd[[colorscheme onedark]]

-- start with packer
require('packer').startup(function(use)
	-- packer
	use 'wbthomason/packer.nvim' -- this is essential.
	--flutter
	use {
		'akinsho/flutter-tools.nvim',
		requires = {
			'nvim-lua/plenary.nvim',
			'stevearc/dressing.nvim', -- optional for vim.ui.select
		},
	}
	-- theme
	use 'folke/tokyonight.nvim'
	use 'sainnhe/everforest'
	use 'sainnhe/edge'
	use 'sainnhe/gruvbox-material'
	use 'sainnhe/sonokai'
	-- Using Packer
	use 'navarasu/onedark.nvim'
	-- lualine
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}
	-- indent guides
	use 'lukas-reineke/indent-blankline.nvim'
	-- treesitter (syntax hightlihter)
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}
	-- tabs
	use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
	-- use 'nvim-tree/nvim-web-devicons'
	-- use {'romgrk/barbar.nvim', requires = 'nvim-web-devicons'}
	-- coc
	use {'neoclide/coc.nvim', branch = 'release'}
	use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional
  },
}
end)

-- lualine
require('lualine').setup()
-- indent guides
-- vim.opt.list = true
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"
require('indent_blankline').setup {
	show_current_context = true,
	show_current_context_start = true,
	show_end_of_line = true,
	space_char_blankline = " ",
}
-- tabs
-- require('barbar').setup()
require('onedark').setup {
	style = 'darker'
}
-- flutter
require("flutter-tools").setup {
	settings = {
		enableSnippets = true,
	}
}
-- treesitter
-- require'nvim-treesitter.configs'.setup {
--	highlight = {
--		enable = true,
--	}
-- }
-- require("bufferline").setup{}
-- empty setup using defaults
