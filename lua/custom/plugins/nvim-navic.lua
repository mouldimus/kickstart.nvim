-- https://github.com/SmiteshP/nvim-navic
--
-- Show the current class or function in the statusline
--
-- Finish configuring nvim navic
--

return {
  'SmiteshP/nvim-navic',
  config = function()
    require('nvim-navic').setup {
      lsp = {
        auto_attach = true,
      },
      highlight = true,
      separator = ' > ',
    }
  end,
  dependencies = {
    'neovim/nvim-lspconfig',
  },
}
