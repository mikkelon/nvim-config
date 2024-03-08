local map = vim.keymap.set
-- [[ Kickstart keymaps ]]
-- Keymaps for running scripts, programs, etc.
map({ 'n', 'v' }, '<F9>', '<cmd>!python3 %<cr>', { desc = "Run python3 on current buffer", silent = true })

-- See `:help vim.keymap.set()`
map({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
map('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
map('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
map('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
map('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
-- vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
map('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- [[ Custom keymaps ]]
-- Resize window using <ctrl> arrow keys
map("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
map("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
map("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
map("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- Move to window using the <ctrl> hjkl keys
-- map("n", "<C-h>", "<C-w>h", { desc = "Go to left window", remap = true })
-- map("n", "<C-j>", "<C-w>j", { desc = "Go to lower window", remap = true })
-- map("n", "<C-k>", "<C-w>k", { desc = "Go to upper window", remap = true })
-- map("n", "<C-l>", "<C-w>l", { desc = "Go to right window", remap = true })

-- Center cursor when scrolling using <C-d> and <C-u>
map("n", "<C-u>", "<C-u>zz");
map("n", "<C-d>", "<C-d>zz");

-- [[ Keymaps for neo-tree ]]
-- Open NeoTree with <space>e
map('n', '<leader>e', ":Neotree reveal<cr>", { silent = true })

-- [[ Keymaps for tmux-navigator ]]
map("n", "<C-h>", "<cmd> TmuxNavigateLeft<cr>", { desc = "Window left", remap = true })
map("n", "<C-l>", "<cmd> TmuxNavigateRight<cr>", { desc = "Window right", remap = true })
map("n", "<C-j>", "<cmd> TmuxNavigateDown<cr>", { desc = "Window down", remap = true })
map("n", "<C-k>", "<cmd> TmuxNavigateUp<cr>", { desc = "Window up", remap = true })
