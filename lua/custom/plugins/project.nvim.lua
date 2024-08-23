-- https://github.com/ahmedkhalf/project.nvim
return { -- Project management
  'ahmedkhalf/project.nvim',
  config = function()
    require('project_nvim').setup {
      detection_methods = { 'pattern', 'lsp' },
      patterns = { '.git', '_darcs', '.hg', '.bzr', '.svn', 'Makefile', 'package.json' },
    }

    require('telescope').load_extension 'projects'
    vim.keymap.set('n', '<leader>sp', require('telescope').extensions.projects.projects, { desc = '[S]earch [P]rojects' })
  end,
}
