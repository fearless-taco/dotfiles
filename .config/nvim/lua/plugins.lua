--------------------------------------------------------------------------------
-- Plugins
--------------------------------------------------------------------------------
local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

--Navigation
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-lualine/lualine.nvim'

-- Language server protcol
Plug "williamboman/nvim-lsp-installer"
Plug "neovim/nvim-lspconfig"
Plug 'ray-x/lsp_signature.nvim'
Plug 'p00f/clangd_extensions.nvim'

-- Text
Plug 'Raimondi/delimitMate'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'EdenEast/nightfox.nvim'
Plug 'sbdchd/neoformat'

-- Search
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/plenary.nvim'

-- Errors
Plug 'folke/trouble.nvim'
Plug 'folke/lsp-colors.nvim'

-- Config Reload
Plug 'famiu/nvim-reload'

-- Completion
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'onsails/lspkind.nvim'

Plug 'nvim-lua/completion-nvim'

vim.call('plug#end')
