---@diagnostic disable: undefined-global

vim.keymap.set("n", "<C-s>", ":w<CR>", { noremap = true })
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>gi", { noremap = true })
vim.keymap.set("v", "<C-s>", "<Esc>:w<CR>gv", { noremap = true })

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function()
		vim.lsp.buf.format({ async = false })
	end,
})

-- bufferline
vim.keymap.set("n", "H", ":bprevious<CR>", { desc = "Buffer anterior" })
vim.keymap.set("n", "L", ":bnext<CR>", { desc = "Próximo buffer" })
