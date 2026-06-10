do
  -- navigate across split windows
  vim.keymap.set('n', '<left>', '<C-w><C-h>', { desc = ' Move focus to the left window' })
  vim.keymap.set('n', '<right>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
  vim.keymap.set('n', '<up>', '<C-w><C-k>', { desc = 'Move focus to the lower window' })
  vim.keymap.set('n', '<down>', '<C-w><C-j>', { desc = 'Move focus to the upper window' })

  -- disable clipboard overwriting
  vim.keymap.set({ 'n', 'v' }, '<Del>', 'x_', { desc = 'Delete without yanking' })
  vim.keymap.set('x', 'p', '"_dP', { desc = 'Paste without overwriting the clipboard' })
  vim.keymap.set({ 'n', 'v' }, '<leader>d', '"_d', { desc = 'Delete without yanking' })

  -- save and exist file(s)
  vim.keymap.set('n', '<leader>u', '<cmd>update<CR>', { desc = 'Update file' })
  vim.keymap.set('n', '<leader>r', '<cmd>redo<CR>', { desc = 'Redo without problem' })
  vim.keymap.set('n', '<leader>x', '<cmd>x<CR>', { desc = 'Update file and quit' })
  vim.keymap.set('n', '<leader>e', '<cmd>wqall<CR>', { desc = 'Update all open files and quit' })

  -- utilities
  vim.keymap.set('n', '<leader>a', 'ggVG', { desc = ' Select All' })
  vim.keymap.set('v', '<', '<gv', { desc = ' Unindent while keeping selection' })
  vim.keymap.set('v', '>', '>gv', { desc = ' Indent while keeping selection' })

  vim.keymap.set('n', 'J', 'mzJ`z', { desc = ' Join lines' })

  vim.keymap.set('n', 'n', 'nzzzv', { desc = ' Next search result cursor centered' })
  vim.keymap.set('n', 'N', 'Nzzzv', { desc = ' Previous search result cursor centered' })
end
