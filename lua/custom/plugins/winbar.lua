local navic = require 'nvim-navic'
local ft = vim.bo.filetype
local exFts = { 'TelescopePrompt', 'TelescopeResults' }

local code_context = function()
  -- disable winbar on certain filetypes
  if ft == vim.tbl_contains(exFts, ft) then
    return ' '
  end

  -- if navic available get location
  if navic.is_available() then
    local location = navic.get_location() -- '{} something > asd' or ''
    return location ~= '' and location or ' '
  else
    return ' '
  end
end

vim.api.nvim_create_autocmd({ 'BufWinEnter', 'BufEnter', 'CursorMoved', 'WinResized', 'WinEnter', 'WinNew' }, {
  callback = function()
    -- call code_context after event has been processed
    vim.schedule(function()
      -- disable winbar on certain filetypes
      if ft == vim.tbl_contains(exFts, ft) then
        return
      else
        -- set window bar
        vim.opt.winbar = ' ' .. code_context()
      end
    end)
  end,
})

return {}
