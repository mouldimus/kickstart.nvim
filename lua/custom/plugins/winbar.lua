local navic = require 'nvim-navic'

local code_context = function()
  local ft = vim.bo.filetype
  if ft == 'TelescopePrompt' or ft == 'TelescopeResults' then
    return
  end

  if navic.is_available() then
    local location = navic.get_location()
    return location ~= '' and location or ' '
  else
    return ' '
  end
end

vim.api.nvim_create_autocmd({ 'BufWinEnter', 'CursorMoved', 'WinResized', 'WinEnter', 'WinNew' }, {
  callback = function()
    local ft = vim.bo.filetype
    if ft == 'TelescopePrompt' or ft == 'TelescopeResults' then
      return
    end

    vim.opt.winbar = code_context()
  end,
})

return {}
