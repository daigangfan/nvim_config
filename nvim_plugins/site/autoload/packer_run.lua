require('packer').startup(function(use)
        use {
  'kyazdani42/nvim-tree.lua',
  requires = {
    'kyazdani42/nvim-web-devicons', -- optional, for file icons
  }
        }
        use "Shougo/deoplete.nvim"
        use "zchee/deoplete-jedi"
end
)

