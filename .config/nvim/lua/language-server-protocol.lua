--------------------------------------------------------------------------------
-- LSP / Diagnostics
--------------------------------------------------------------------------------
vim.lsp.config("clangd", {
    cmd = { "clangd", "--background-index", "--clang-tidy", "--header-insertion=iwyu", "--enable-config" },
    root_markers = {
        ".clangd",
        ".clang-tidy",
        ".clang-format",
        "compile_commands.json",
        "compile_flags.txt",
        "configure.ac",
        ".git",
    },
})

vim.lsp.enable("clangd")

vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("PersonalLspKeymaps", {}),
    callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        if not client or client.name ~= "clangd" then
            return
        end

        local bufnr = args.buf
        local map = function(mode, lhs, rhs)
            vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, silent = true })
        end

        map("n", "gd", vim.lsp.buf.definition)
        map("n", "gy", vim.lsp.buf.type_definition)
        map("n", "gi", vim.lsp.buf.implementation)
        map("n", "gr", vim.lsp.buf.references)
        map("n", "K", vim.lsp.buf.hover)
        map("n", "<leader>rn", vim.lsp.buf.rename)
        map({ "n", "x" }, "<leader>a", vim.lsp.buf.code_action)
    end,
})

--------------------------------------------------------------------------------
-- LSPTrouble
--------------------------------------------------------------------------------
require("trouble")

vim.cmd [[
    autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false, border="single"})
]]

vim.diagnostic.config({
    virtual_text = false,
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = " ",
            [vim.diagnostic.severity.WARN] = " ",
            [vim.diagnostic.severity.HINT] = " ",
            [vim.diagnostic.severity.INFO] = " ",
        },
    },
    underline = true,
    update_in_insert = false,
    severity_sort = false
})

--------------------------------------------------------------------------------
-- Neoformat on save
--------------------------------------------------------------------------------
vim.cmd [[
    autocmd BufWritePre * undojoin | Neoformat
]]
