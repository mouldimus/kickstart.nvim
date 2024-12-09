return {
  'brianhuster/live-preview.nvim',
  dependencies = {
    {
      'brianhuster/autosave.nvim', -- Not required, but recomended for autosaving and sync scrolling
      event = 'InsertEnter',
      config = function()
        require('autosave').setup {
          enabled = false,
        }
      end,
    },

    -- You can choose one of the following pickers
    'nvim-telescope/telescope.nvim',
  },
  opts = {},
}
