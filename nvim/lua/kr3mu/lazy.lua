local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
	{'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},
	{'windwp/nvim-autopairs'},
    {'datsfilipe/min-theme.nvim'},
    --{'rebelot/kanagawa.nvim'},
    -- {'rose-pine/neovim', name = 'rose-pine'},
    -- {'ramojus/mellifluous.nvim'},
    {'nvim-lualine/lualine.nvim', dependencies = {'nvim-tree/nvim-web-devicons'}},
	-- Lsp
	{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
	{'ray-x/lsp_signature.nvim'},
	{'neovim/nvim-lspconfig'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/cmp-buffer'},
	{'hrsh7th/nvim-cmp'},
	{'hrsh7th/cmp-path'},
	{'L3MON4D3/LuaSnip'},
	{'mason-org/mason.nvim', opts = {}},
	{'windwp/nvim-ts-autotag'},
	{'numToStr/Comment.nvim'},
    {'williamboman/mason-lspconfig.nvim'},
	{'nvim-telescope/telescope.nvim', tag = '0.1.8', dependencies = { 'nvim-lua/plenary.nvim' }},
}

require("lazy").setup(plugins, {})
