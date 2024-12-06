return {
  vim.keymap.set('n', '<leader>tt', function()
    vim.cmd.split 'term://$SHELL'
    vim.cmd.startinsert()
  end, { desc = 'Toggle [T]erminal' }),
  vim.api.nvim_set_keymap('t', '<Esc>q', '[Q]uit terminal', { noremap = true, silent = true }),
  -- NOTE: <C-d><C-d> Also closes the terminal

  -- Live HTML/MD Preview
  require('which-key').add {
    { '<leader>p', group = '[P]review' },
  },
  vim.keymap.set('n', '<leader>ps', ':LivePreview start<CR>', { desc = 'Preview [s]tart' }),
  vim.keymap.set('n', '<leader>po', ':LivePreview stop<CR>', { desc = 'Preview st[o]p' }),
  vim.keymap.set('n', '<leader>pp', ':LivePreview pick<CR>', { desc = 'Preview [p]ick' }),
  vim.keymap.set('n', '<leader>pt', ':Autosave toggle<CR>', { desc = '[T]oggle autosave' }),
}
