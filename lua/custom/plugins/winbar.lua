local navic = require 'nvim-navic'

local code_context = function()
  if navic.is_available() then
    local location = navic.get_location()
    return location ~= '' and location or ' '
  else
    return ' '
  end
end

vim.api.nvim_create_autocmd({ 'BufWinEnter', 'CursorMoved', 'WinResized', 'WinEnter', 'WinNew' }, {
  callback = function()
    -- Dynamically update the winbar
    vim.wo.winbar = code_context()
  end,
})

return {}
