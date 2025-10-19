require('mason').setup()

require("mason-lspconfig").setup({
    ensure_installed = {
        "lua_ls",              -- Lua
        "ts_ls",               -- TypeScript / JavaScript
        "gopls",               -- Go
        "pyright",             -- Python
        "clangd",              -- C / C++
        "omnisharp"            -- C#
    },
    automatic_installation = true,
})

