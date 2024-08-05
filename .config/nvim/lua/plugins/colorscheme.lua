return {
  -- add dracula
  { "Mofiqul/dracula.nvim" },

  -- Configure LazyVim to load dracula
  {
    "LazyVim/LazyVim",
    opts = {
      transparent_bg = true,
      colorscheme = "dracula",
    },
  },
}
