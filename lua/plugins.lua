
-- start with packer
require('packer').startup(function(use)
	-- Packer
	use 'wbthomason/packer.nvim'
	-- Copilot
	use 'github/copilot.vim'
	-- Coc
	use {'neoclide/coc.nvim', branch = 'release'}
	-- Web devicons
	use 'nvim-tree/nvim-web-devicons'
	-- Theme
	use {
		'morhetz/gruvbox',
		config = function()
			vim.cmd[[colorscheme gruvbox]]
		end
	}
	use {
		'tiagovla/tokyodark.nvim',
	}
	-- Lualine
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}
	-- Indent guides
	use 'lukas-reineke/indent-blankline.nvim'
	-- Treesitter
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}
	-- Tabs bufferline
	use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
	-- Nvim Tree (file explorer)
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional
		},
	}
end)

-- treesitter
require('nvim-treesitter.configs').setup {
	highlight = {
		enable = true,
	},
	indent = {
		enable = true,
	},
}
local function os_icon()
	local os = vim.loop.os_uname().sysname
	if os == 'Linux' then
		return ''
	elseif os == 'Darwin' then
		return ''
	elseif os == 'Windows' then
		return ''
	else
		return os
	end
end
-- lualine
require('lualine').setup{
	sections = {
		lualine_x = {
			'encoding',
			-- 'fileformat',
			os_icon,
			'filetype',
		}
	}
}
-- indent guides
vim.opt.list = true
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"
require('indent_blankline').setup {
	show_current_context = true,
	show_current_context_start = true,
	show_end_of_line = true,
	space_char_blankline = " ",
}
vim.opt.termguicolors = true
-- tabs
require('bufferline').setup{} -- alternative to barbar
-- nvim-tree
require('nvim-tree').setup();
-- tokyodark
vim.cmd[[colorscheme tokyodark]]
-- vim.cmd[[colorscheme gruvbox]]
