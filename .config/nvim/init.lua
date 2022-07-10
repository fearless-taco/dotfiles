--------------------------------------------------------------------------------
-- The Lua API has a function to map keys to some functions
--------------------------------------------------------------------------------
local map = function(type, key, value)
    vim.api.nvim_set_keymap(type, key, value, {noremap = true, silent = true})
end

Nmap = function(shortcut, command)
  map('n', shortcut, command)
end

--------------------------------------------------------------------------------
-- Configurations
--------------------------------------------------------------------------------
require('plugins')
require('general')
require('language-server-protocol')
require('search')
require('auto-completion')

