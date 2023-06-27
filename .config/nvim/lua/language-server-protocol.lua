--------------------------------------------------------------------------------
-- LSP
--------------------------------------------------------------------------------
-- GUI (:LSPInfo)
require("nvim-lsp-installer").setup {
    automatic_installation = true
}

local lspconfig = require("lspconfig")
-- Language servers
lspconfig.tsserver.setup {}
lspconfig.ccls.setup {}
lspconfig.pyright.setup{}


--------------------------------------------------------------------------------
-- LSPTrouble
--------------------------------------------------------------------------------
require("trouble")

vim.cmd [[
    autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false, border="single"})
]]

vim.diagnostic.config({
    virtual_text = false,
    signs = true,
    underline = true,
    update_in_insert = false,
    severity_sort = false
})

local signs = {Error = " ", Warn = " ", Hint = " ", Info = " "}
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, {text = icon, texthl = hl, numhl = hl})
end

--------------------------------------------------------------------------------
-- Neoformat on save
--------------------------------------------------------------------------------
vim.cmd [[
    autocmd BufWritePre * undojoin | Neoformat
]]
