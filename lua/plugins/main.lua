return {
  -- tmux navigation
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },

  -- add telescope-fzf-native
  {
    "telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
  },

  -- neotest binding
  {
    "folke/which-key.nvim",
    optional = true,
    opts = {
      defaults = {
        ["<leader>t"] = { name = "+test" },
      },
    },
  },

  -- status line bottom
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function()
      return {
        options = {
          theme = "auto",
          globalstatus = true,
          disabled_filetypes = { statusline = { "dashboard", "alpha" } },
        },
        sections = {
          lualine_y = {
            { "location", padding = { left = 0, right = 1 } },
          },
          lualine_z = {},
        },
        extensions = { "neo-tree", "lazy" },
      }
    end,
  },

  -- comments
  {
    "echasnovski/mini.comment",
    opts = {
      mappings = {
        -- Toggle comment (like `<leader>ccip` - comment inner paragraph) for both
        -- Normal and Visual modes
        comment = "<leader>cc",

        -- Toggle comment on current line
        comment_line = "<leader>cc",

        -- Define 'comment' textobject (like `dcc` - delete whole comment block)
        -- textobject = "cc",
      },
    },
  },
}
