-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.mapleader = "\\"
vim.g.maplocalleader = ","

vim.cmd("set ignorecase")
vim.cmd("set smartcase")

vim.opt.number = true
vim.opt.relativenumber = false

-- line guide
vim.cmd("set colorcolumn=80,100,120")
vim.cmd("hi ColorColumn ctermbg=235 guibg=#2c2d27")
-- vim.cmd("set background=dark")

-- abbreviations
vim.cmd("iabbrev recieve receive")
vim.cmd("iabbrev cab@ Co-authored-by: NAME <NAME@example.com><Esc>BBciw")

-- delete all buffers but current
vim.api.nvim_create_user_command("Bd", ":up | %bd! | e#", {})

-- clipboard support
vim.opt.clipboard:append("unnamedplus")
