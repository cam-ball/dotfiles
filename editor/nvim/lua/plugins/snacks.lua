return {
  {
    "folke/snacks.nvim",
    opts = {
      styles = {
        notification_history = {
          wo = { wrap = true },
          title = "test",
        },
      },
      picker = {
        hidden = true,
        sources = {
          files = {
            hidden = true,
            ignored = false,
            include = {
              ".env*",
            },
          },
        },
        win = {
          preview = {
            wo = {
              wrap = true,
            },
          },
          wo = {
            wrap = true,
          },
        },
      },
    },
    keys = {
      {
        "<leader>t",
        function()
          Snacks.picker.files()
        end,
        desc = "Find Files",
      },
    },
  },
}
