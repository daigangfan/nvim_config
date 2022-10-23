require('packer').startup(function(use)
        use 'wbthomason/packer.nvim'
        use {
  'kyazdani42/nvim-tree.lua',
  requires = {
    'kyazdani42/nvim-web-devicons', -- optional, for file icons
  }
        }
        use "Shougo/deoplete.nvim"
        use "zchee/deoplete-jedi"
        use 'jiangmiao/auto-pairs'
        use 'davidhalter/jedi-vim'
        use 'neomake/neomake'
        use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}
        use 'kdheepak/tabline.nvim'
        use {"nvim-treesitter/nvim-treesitter",run=":TSUpdate"}
        use 'stevearc/aerial.nvim'
	use 'nvim-lua/plenary.nvim'
	use "nvim-telescope/telescope.nvim"
	use { "williamboman/mason.nvim" }
	use 'neovim/nvim-lspconfig'
    use "numToStr/FTerm.nvim"
    use 'dr4vs/neon.nvim'
    use 'mfussenegger/nvim-dap'
    use 'mfussenegger/nvim-dap-python'
    use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'kyazdani42/nvim-web-devicons'}
end
)

