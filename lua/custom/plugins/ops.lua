do
  vim.g.netrw_banner=0
  vim.g.netrw_liststyle=3
  vim.g.indent_blankline_char = '▏'

  vim.o.laststatus=3

  vim.o.relativenumber=true

  vim.o.undodir = '/tmp/nvim_undo'
  vim.fn.mkdir(vim.o.undodir, 'p')

  vim.o.foldenable = true

  vim.o.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
  vim.o.foldmethod = 'expr'

  -- vim.o.foldlevel = 99
  -- vim.o.foldlevelstart = -1

  vim.o.linebreak = true -- Wrap at word boundaries
  vim.o.showbreak = '↪ ' -- Add a visual cue at the start of wrapped lines

  vim.o.tabstop = 4
  vim.o.softtabstop = 4
  vim.o.shiftwidth = 4
  vim.o.expandtab = true

  vim.o.smartindent=true

  vim.o.updatetime = 10000 --ms: 5 minutes interval between each update of swap files

  -- vim.o.guicursor=''
  vim.o.termguicolors=true

  vim.o.cmdheight=0
end
