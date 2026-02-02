-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

--  set jj escape
vim.keymap.set("i", "jj", "<Esc>", { desc = "Escape insert mode", remap = false })

-- remove keyswapping behavior with alt key because I can't make tmux play nice with it
vim.keymap.del({ "n", "i", "v" }, "<A-j>")
vim.keymap.del({ "n", "i", "v" }, "<A-k>")

-- copy filepath
vim.keymap.set("n", "<leader>p", ':let @+=expand("%")<CR>', { desc = "Copy current relative filepath", remap = true })

-- disable > and < maps for indenting, re-enables repeatable motion with .
-- https://github.com/LazyVim/LazyVim/discussions/1239
vim.keymap.set("v", "<", "<")
vim.keymap.set("v", ">", ">")
