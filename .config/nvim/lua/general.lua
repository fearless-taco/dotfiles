local map = function(type, key, value)
    vim.api.nvim_set_keymap(type, key, value, {noremap = true, silent = true})
end

function Nmap(key, value)
    map("n", key, value)
end

-- Leader
vim.g.mapleader = ","
Nmap("<leader>z", "<C-z>") -- Suspend session

-- Color
vim.opt.termguicolors = true
vim.opt.encoding="utf-8"
vim.cmd('colorscheme nightfox')

-- Indentation
vim.opt.autoindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.g.indent_blankline_enabled = false

-- Searching / Highlight
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true

-- Yank to clipboard
vim.api.nvim_command('set clipboard=unnamed')

