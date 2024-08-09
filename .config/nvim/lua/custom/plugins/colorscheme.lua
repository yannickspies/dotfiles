return {
  'rose-pine/neovim',
  name = 'rose-pine',
  priority = 1000,
  opts = {},
  config = function()
    vim.cmd 'colorscheme rose-pine-moon'
  end,
}
