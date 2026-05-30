do
  local transparency=false

  local function coloring()
    require('catppuccin').setup { transparent_background = not transparency }
    vim.cmd.colorscheme 'catppuccin'
    transparency= not transparency
  end

  vim.api.nvim_create_user_command('Color', coloring, {})

  vim.api.nvim_create_user_command('Nuke', function()
    for i = 0, 9 do
      vim.fn.setreg(tostring(i), '')
    end

    for c = string.byte 'a', string.byte 'z' do
      vim.fn.setreg(string.char(c), '')
    end

    -- vim.fn.setreg("/", "")
    -- vim.fn.setreg("+", "")
    -- vim.fn.setreg("*", "")
  end, {})

  vim.api.nvim_create_user_command('Wrap', function() vim.o.wrap = not vim.o.wrap end, {})

  --  local function hide_diagnostics()
  --      vim.diagnostic.reset(nil, 0)
  --      vim.notify("All diagnostics cleared, Master.", vim.log.levels.INFO)
  --      vim.defer_fn(function()
  --  	vim.notify("   ", vim.log.levels.INFO)
  --      end, 1000)
  --  end
  --  --[[

  --  vim.keymap.set("n", "<Esc><Esc><Esc>", hide_diagnostics, { desc = "Clear diagnostics and notify" })
end
