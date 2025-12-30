return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- diagnostics = {
      --   virtual_text = true,
      -- },
      servers = {
        rubocop = {
          mason = false,
          cmd = { "bundle", "exec", "rubocop", "--lsp" },
        },
        ruby_lsp = {
          mason = false,
          cmd = { vim.fn.expand("~/.asdf/shims/ruby-lsp") },
        },
      },
    },
  },
}
