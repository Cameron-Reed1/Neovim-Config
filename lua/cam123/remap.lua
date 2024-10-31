vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<Escape>", function () vim.opt.hlsearch = false end)

vim.keymap.set("n", "<leader>pr", "<cmd>!just run<cr>")
vim.keymap.set("n", "<leader>pb", "<cmd>!just build<cr>")
