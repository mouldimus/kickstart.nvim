return {
  vim.keymap.set('n', '<leader>tt', function()
    vim.cmd.split 'term://$SHELL'
    vim.cmd.startinsert()
  end, { desc = 'Toggle [T]erminal' }),

  -- vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
  -- Just there for reference
  -- vim.keymap.set('t', '<esc>q', '<C-\\><C-n>:q!<cr>', { desc = '[Q]uit window' }),
  -- NVM just found out <C-d> exits the t mode && and a second press of <C-d> closes the terminal
}
