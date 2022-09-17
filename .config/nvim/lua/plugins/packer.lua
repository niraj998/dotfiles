local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer.lua source <afile> | PackerSync
  augroup end
]])


-- vim.cmd [[packadd packer.nvim]]

local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

packer.init {
  display = {
    open_fn = function()
	    return require("packer.util").float { border = "rounded" }
    end,
  },
}

return packer.startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'kyazdani42/nvim-web-devicons'
  use 'kyazdani42/nvim-tree.lua'
--  use "lunarvim/onedarker.nvim" 
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp' 
  use "rafamadriz/friendly-snippets" 
  use "L3MON4D3/LuaSnip"
  use "saadparwaiz1/cmp_luasnip"
  use "neovim/nvim-lspconfig"
  use "williamboman/nvim-lsp-installer"
  use { "nvim-treesitter/nvim-treesitter" , run = ":TSUpdate" }
  use "windwp/nvim-autopairs"
  use "numToStr/Comment.nvim"
  use "akinsho/bufferline.nvim"
  use "moll/vim-bbye"
  use 'lervag/vimtex'

-- Is using a standard Neovim install, i.e. built from source or using a
-- provided appimage.
  use 'lewis6991/impatient.nvim'
  use 'goolord/alpha-nvim'
  use "antoinemadec/FixCursorHold.nvim" -- This is needed to fix lsp doc highlight
  use "lukas-reineke/indent-blankline.nvim"
  use "folke/which-key.nvim"
  use "nvim-lualine/lualine.nvim"

end)
