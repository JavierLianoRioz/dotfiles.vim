return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { "java" }, -- Asegúrate de instalar Java
      highlight = { enable = true },
      indent = { enable = true },
      fold = {
        enable = true,
      },
    })
    vim.o.foldmethod = "expr"
    vim.o.foldexpr = "nvim_treesitter#foldexpr()"
  end,
}
