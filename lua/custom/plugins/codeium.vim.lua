-- https://github.com/Exafunction/codeium.vim
--
-- Action	                Function
-- Clear current suggestion     codeium#Clear()
-- Next suggestion	        codeium#CycleCompletions(1)
-- Previous suggestion	        codeium#CycleCompletions(-1)
-- Insert suggestion	        codeium#Accept()
-- Manually trigger suggestion	codeium#Complete()
return {
  {
    'Exafunction/codeium.vim',
    event = 'BufEnter',
    config = function()
      vim.keymap.set('i', 'Tab', function()
        return vim.fn['codeium#Accept']()
      end, { desc = 'Accept codeium suggestion', expr = true })

      vim.keymap.set('i', '<C-]>', function()
        return vim.fn['codeium#Clear']()
      end, { desc = 'Clear codeium suggestion', expr = true })

      vim.api.nvim_create_autocmd('InsertLeave', {
        group = vim.api.nvim_create_augroup('codeium-clear', { clear = true }),
        callback = function()
          vim.fn['codeium#Clear']()
        end,
      })

      vim.keymap.set('i', '<C-c>', function()
        return {
          vim.fn['codeium#Clear'](),
          vim.fn['execute'] 'stopinsert',
        }
      end, { desc = 'Clear codeium suggestion', expr = true })
    end,
  },
}
