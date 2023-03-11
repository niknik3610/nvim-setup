vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.updatetime = 50 

vim.opt.colorcolumn = ""

vim.g.mapleader = " "
vim.g.netrw_banner = 0;

--opens explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

--closes tab
vim.keymap.set("n", "<leader>bd", vim.cmd.bd)

--forward and backward tab
vim.keymap.set("n", "<leader>,", vim.cmd.bprevious)
vim.keymap.set("n", "<leader>.", vim.cmd.bnext)

--save
vim.keymap.set("n", "<leader>s", vim.cmd.w)
vim.api.nvim_set_keymap("n", "<leader>br", "<cmd>lua vim.lsp.buf.rename()<CR>", { noremap = true })
vim.api.nvim_set_hl(0, 'LineNr', { fg = "lightblue"} )
