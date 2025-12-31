-- plugin configs pulled from vimscript config file
return {
  {
    "tpope/vim-rails",
    lazy = false,
    keys = {
      { "<localleader>a", ":A<cr>", { desc = "Open alternate in current buffer", remap = true } },
      { "<localleader>av", ":AV<cr>", { desc = "Open alternate in new vertical split", remap = true } },
      { "<localleader>as", ":AS<cr>", { desc = "Open alternate in new horizontal split", remap = true } },
      { "<localleader>at", ":AT<cr>", { desc = "Open alternate in new tab", remap = true } },
    },
  },
  { "mechatroner/rainbow_csv" },
  { "RRethy/nvim-treesitter-endwise" },
  -- { "kana/vim-textobj-user" },
  -- { "nelstrom/vim-textobj-rubyblock" },
  { "AndrewRadev/splitjoin.vim" },
  { "tpope/vim-surround" },
  { "tpope/vim-abolish" },
  { "junegunn/fzf" },
  { "junegunn/fzf.vim" },
  { "izzergh/rumpelstiltskin" },
}
