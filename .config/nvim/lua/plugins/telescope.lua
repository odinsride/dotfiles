return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    { "<leader>ff", ":Telescope find_files<CR>", desc = "Find files" },
    { "<leader>fg", ":Telescope live_grep<CR>", desc = "Live grep" },
    { "<leader>fb", ":Telescope buffers<CR>", desc = "Find buffers" },
    { "<leader>fh", ":Telescope help_tags<CR>", desc = "Help tags" },
  },
  config = function()
    require("telescope").setup({
      defaults = {
        file_ignore_patterns = { "node_modules", ".git/" },
        layout_config = {
          horizontal = { preview_width = 0.6 },
        },
      },
    })
  end,
}
