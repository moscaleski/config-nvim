vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>w", ":w<cr>")
vim.keymap.set("i", "jj", "<Esc>")

-- move blocks
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- cursor no meio no jump
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- cursor no meio no jump
vim.keymap.set("n", "n", "nzzzv") -- cursor no meio no jump
vim.keymap.set("n", "N", "Nzzzv") -- cursor no meio no jump

vim.keymap.set("x", "<leader>p<cr>", "\"_dP") -- para nao colar o highlight

vim.keymap.set("n", "<leader>y", "\"+y") -- copia para clipboard
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format()
end)

-- quickfix nav
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
