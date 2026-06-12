do
  vim.loader.enable()

  vim.g.netrw_banner=0
  vim.g.netrw_liststyle=3

  vim.g.mapleader = ' '
  vim.g.maplocalleader = ' '

  vim.g.have_nerd_font = true

  vim.o.number = true
  vim.o.relativenumber=true
  vim.o.laststatus=3

  vim.o.signcolumn = 'yes'

  vim.o.undofile = true
  vim.o.undodir = '/tmp/nvim_undo'
  vim.fn.mkdir(vim.o.undodir, 'p')

  -- vim.o.foldlevel = 99
  -- vim.o.foldlevelstart = -1
  -- vim.o.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
  vim.o.foldmethod = 'manual'
  vim.o.foldenable = true

  vim.g.indent_blankline_char = '▏'
  vim.o.list = true
  vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }


  vim.o.linebreak = true -- Wrap at word boundaries
  vim.o.showbreak = '↪ ' -- Add a visual cue at the start of wrapped lines

  vim.o.tabstop = 4
  vim.o.softtabstop = 4
  vim.o.shiftwidth = 4
  vim.o.expandtab = true

  vim.o.smartindent=true
  vim.o.breakindent = true

  vim.o.updatetime = 10000
  vim.o.timeoutlen = 300

  -- vim.o.guicursor=''
  vim.o.termguicolors=true

  -- vim.o.cmdheight=0

  vim.o.mouse = 'a'
  vim.o.showmode = false

  vim.schedule(function() vim.o.clipboard = 'unnamedplus' end)
  vim.o.ignorecase = true
  vim.o.smartcase = true
  vim.o.inccommand = 'split'
  vim.o.splitright = true
  vim.o.splitbelow = true

  vim.o.cursorline = true

  vim.o.scrolloff = 8
  vim.o.confirm = true

  vim.cmd.colorscheme('catppuccin')
end


do
  --  See `:help vim.keymap.set()`
  vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
  -- vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
  vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- navigate across split windows
  vim.keymap.set('n', '<left>', '<C-w><C-h>', { desc = ' Move focus to the left window' })
  vim.keymap.set('n', '<right>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
  vim.keymap.set('n', '<up>', '<C-w><C-k>', { desc = 'Move focus to the lower window' })
  vim.keymap.set('n', '<down>', '<C-w><C-j>', { desc = 'Move focus to the upper window' })

  -- disable clipboard overwriting
  vim.keymap.set({ 'n', 'v' }, '<Del>', '\"_x', { desc = 'Delete without yanking' })
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

  -- vim.keymap.set('n', '', 'o<Esc>', { desc = ' Create newline below' })
  vim.keymap.set('n', 'J', 'mzJ`z', { desc = ' Join lines' })

  vim.keymap.set('n', 'n', 'nzzzv', { desc = ' Next search result cursor centered' })
  vim.keymap.set('n', 'N', 'Nzzzv', { desc = ' Previous search result cursor centered' })
end


do
  vim.diagnostic.config {
    underline = { severity = vim.diagnostic.severity.ERROR },
    virtual_text = false,
    severity_sort = true,
    signs = vim.g.have_nerd_font and {
      text = {
        [vim.diagnostic.severity.ERROR] = '󰅚 ',
        [vim.diagnostic.severity.WARN] = '󰀪 ',
        [vim.diagnostic.severity.INFO] = '󰋽 ',
        [vim.diagnostic.severity.HINT] = '󰌶 ',
      },
    } or nil,
  }


  -- NOTE: auto-commands
  vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking (copying) text',
    group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
    callback = function() vim.hl.on_yank() end,
  })

  require 'kickstart.plugins.autopairs'
  end

