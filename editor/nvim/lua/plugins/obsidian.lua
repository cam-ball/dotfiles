return {
  {
    "obsidian-nvim/obsidian.nvim",
    enabled = true,
    version = "*",
    lazy = true,
    ft = "markdown",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    opts = {
      legacy_commands = false,
      workspaces = {
        { name = "werk", path = "~/Documents/werk" },
      },
    },
  },
}
