vim.keymap.set("n", "<leader>q", ":q!<CR>", { desc = "[q]uit buffer" })
vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "[w]rite buffer" })

-- Unset heighlighted search with ESC in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "ge", vim.diagnostic.open_float, { desc = "[g]o to diagnostic [e]rror messages" })
vim.keymap.set("n", "gq", vim.diagnostic.setloclist, { desc = "[g]o to diagnostic [q]uickfix list" })

-- terminal helper
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
vim.keymap.set("n", "<leader>tt", ":12split<CR>:term<CR>a", { desc = "[t]erminal split" })

-- Use CTRL+<hjkl> to switch between windows
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })
