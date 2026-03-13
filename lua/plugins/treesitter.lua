return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  config = function () 
    require'nvim-treesitter'.setup {
      auto_install = false,

      -- A list of parser names, or "all" (the listed parsers MUST always be installed)
      ensure_installed = { "lua", "vim", "vimdoc", "markdown", "bash", "c", "cpp", "cmake", "cuda", "python" },

      highlight = { enable = true }
    } end
}
