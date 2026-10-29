return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- diagnostics = {
      --   virtual_text = true,
      -- },
      servers = {
        ruby_lsp = {
          mason = false,
          reuse_client = function(client, config)
            return client.config.root_dir == config.root_dir
          end,
        },
      },
    },
  },
}
