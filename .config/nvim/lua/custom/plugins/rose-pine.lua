return {
  'rose-pine/neovim',
  name = 'rose-pine',
  priority = 1000,
  opts = {
    variant = 'main', -- auto, main, moon, or dawn
    styles = {
      transparency = true,
    },
  },
  config = function()
    vim.cmd 'colorscheme rose-pine-main'
  end,
}
