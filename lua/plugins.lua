-- vim settings
-- vim.cmd[[colorscheme tokyonight-night]]
-- vim.cmd[[colorscheme everforest]]
-- vim.cmd[[colorscheme edge]]
-- vim.cmd[[colorscheme gruvbox-material]]
vim.cmd[[colorscheme sonokai]]
-- vim.cmd[[colorscheme onedark]]

-- start with packer
require('packer').startup(function(use)
	-- packer
	use 'wbthomason/packer.nvim' -- this is essential.
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
	use 'nvim-tree/nvim-web-devicons'
	use {'romgrk/barbar.nvim', requires = 'nvim-web-devicons'}
	-- coc
	use {'neoclide/coc.nvim', branch = 'release'}
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
require('barbar').setup()
require('onedark').setup {
	style = 'darker'
}
