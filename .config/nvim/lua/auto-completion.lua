--------------------------------------------------------------------------------
-- Completion (neo-cmp)
--------------------------------------------------------------------------------
local lspkind = require('lspkind')
local cmp = require("cmp")
cmp.setup {
    -- You must set mapping if you want.
    mapping = {
        ["<C-p>"] = cmp.mapping.select_prev_item(),
        ["<C-n>"] = cmp.mapping.select_next_item(),
        ["<Tab>"] = cmp.mapping.confirm({select = true}),
        ["<C-d>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.close()
    },
    -- You should specify your *installed* sources.
    sources = {
        {name = "nvim_lsp"}, {name = "path"}, {name = "buffer"},
        {name = "nvim_lua"}
    },
    formatting = {
        format = lspkind.cmp_format({
            mode = 'symbol', -- show only symbol annotations
            maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
        })
    }
}

