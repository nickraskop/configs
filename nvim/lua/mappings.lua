require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>df", vim.diagnostic.open_float, { desc = "Show diagnostic in a floating window" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
