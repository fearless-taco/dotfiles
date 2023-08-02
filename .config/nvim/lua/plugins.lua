-- README
-- To install plugins use- :PlugInstall

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

-- Completion (Conquer of Completion -COC) 
Plug 'neoclide/coc.nvim'

vim.call('plug#end')
