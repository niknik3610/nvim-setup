local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
    'eslint',
    'rust_analyzer',
})

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({select = true}),
    ["<C-Space>"] = cmp.mapping.complete(),
})

lsp.set_preferences({
    sign_icons = {  }
})

lsp.setup_nvim_cmp({
    mapping = cmp_mappings
})


--binds that only work on files with lsp
lsp.on_attach(function(client, bufnr)
    local opts = {buffer = bufnr, remap = false} 
    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts) 
    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)

end)

lsp.setup()

vim.diagnostic.config({
    virtual_text = true;
})
