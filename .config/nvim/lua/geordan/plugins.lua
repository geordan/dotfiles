return require('packer').startup(function(use)
  -- packer can manage itself
  use 'wbthomason/packer.nvim'

  -- themes
  use 'navarasu/onedark.nvim'

  -- file management
  use 'kyazdani42/nvim-web-devicons'
  use 'kyazdani42/nvim-tree.lua'

  -- lanugage server
  use 'neovim/nvim-lspconfig'
end)
