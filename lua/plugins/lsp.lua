return {
    {
    "williamboman/mason.nvim",
    event = "VeryLazy",
    config = function()
        require('mason').setup()
        -- require("mason-lspconfig").setup()
    end
},
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "ts_ls" }
      })
    end
  },
 {
    "neovim/nvim-lspconfig",
    event = "VeryLazy",
    dependencies = { "williamboman/mason-lspconfig.nvim"},
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.ts_ls.setup({})

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
    end
},

}
