-- https://github.com/SmiteshP/nvim-navic
--
-- Show the current class or function in the statusline
--
-- Finish configuring nvim navic
--
return {
  'SmiteshP/nvim-navic',
  config = function()
    require('nvim-navic').setup {}
    require('lspconfig').tsserver.setup {
      on_attach = function(client, bufnr)
        require('nvim-navic').attach(client, bufnr)
      end,
    }
  end,
}
-- return {}
