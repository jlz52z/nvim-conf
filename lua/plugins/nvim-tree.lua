return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  keys = {
      { "<leader>f", ":NvimTreeToggle<CR>", desc = "toggle file tree"},
  },
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    -- optionally enable 24-bit colour
    vim.opt.termguicolors = true
    require("nvim-tree").setup {}
  end,
}
