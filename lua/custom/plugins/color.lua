-- Catppuccin theme setup (Neovim)
-- This controls colors, syntax highlighting, and plugin UI styling
do
  vim.pack.add { 'https://github.com/catppuccin/nvim' }

  require('catppuccin').setup {

    ------------------------------------------------------------
    -- 🎨 BASE STYLE (global look & feel)
    ------------------------------------------------------------

    flavor = 'mocha', -- "latte", "frappe", "macchiato"
    -- mocha = darkest, most popular for coding

    background = {
      light = 'latte',
      dark = 'mocha',
    },

    transparent_background = false,
    -- true = no background color (good if you use terminal transparency)

    term_colors = true,
    -- syncs terminal colors with theme (recommended ON)

    ------------------------------------------------------------
    -- ⚡ PERFORMANCE (safe to leave ON)
    ------------------------------------------------------------

    compile = {
      enabled = true,
      path = vim.fn.stdpath 'cache' .. '/catppuccin',
    },

    ------------------------------------------------------------
    -- 🧩 PLUGIN INTEGRATIONS
    -- ONLY enable what you actually use
    ------------------------------------------------------------

    integrations = {

      --------------------------------------------------------
      -- 🌳 Syntax engine (IMPORTANT)
      --------------------------------------------------------
      treesitter = true,
      -- THIS is what gives modern syntax highlighting
      -- (functions, parameters, variables, etc.)

      semantic_tokens = true,
      -- LSP-powered extra coloring (optional but useful)

      --------------------------------------------------------
      -- 💡 LSP / diagnostics UI
      --------------------------------------------------------
      mason = true,
      -- if you use Mason (LSP installer)

      -- noice = true,
      -- fancy command + notification UI (optional)

      notify = true,
      -- notification popups styling

      --------------------------------------------------------
      -- 📊 UI components (ONLY if you use them)
      --------------------------------------------------------

      lualine = true,
      -- bottom statusline (most people use this)

      -- bufferline = true,
      -- top tab bar for buffers

      indent_blankline = {
        enabled = true,
        colored_indent_levels = true,
        -- false = subtle indentation lines (clean look)
      },

      which_key = true,
      -- keybinding popup helper (very useful)

      --------------------------------------------------------
      -- 🧪 Git integration (optional but helpful)
      --------------------------------------------------------
      gitsigns = true,

      diffview = true,
      -- git diff UI (only if you installed it)

      --------------------------------------------------------
      -- 🧱 Completion (ONLY if you use cmp)
      --------------------------------------------------------
      cmp = true,

      --------------------------------------------------------
      -- 🧭 OPTIONAL UI TOOLS (safe to turn off)
      --------------------------------------------------------

      telescope = true,
      -- ONLY enable if you installed Telescope
      -- fuzzy finder for files/search

      -- nvimtree = false,
      -- neo_tree = false,
      -- file explorers (you can ignore both unless installed)

      -- dap = false,
      -- dap_ui = false,
      -- debugging UI (only if you use nvim-dap)

      dashboard = false,
      alpha = false,
      -- startup screens (optional aesthetics)

      aerial = false,
      barbecue = false,
      -- code outline / breadcrumbs (advanced UI extras)

      mini = {
        enabled = true,
        indentscope_color = '',
        -- mini.indentscope = indentation highlight module
      },
    },

    ------------------------------------------------------------
    -- 🌈 BASE COLOR OVERRIDES (subtle background tuning)
    ------------------------------------------------------------

    -- color_overrides = {            -- changed -
    --   mocha = {
    --     base = "#1e1e2e",
    --     mantle = "#181825",
    --     crust = "#11111b",
    --   },
    -- },

    ------------------------------------------------------------
    -- 🧠 CORE SYNTAX + UI CONTROL (MOST IMPORTANT SECTION)
    ------------------------------------------------------------

    -- NOTE: this portion is commented out. we can check it later

    -- custom_highlights = function(colors)
    --   return {
    --
    --     --------------------------------------------------------
    --     -- 🔤 CODE STRUCTURE (THIS is your “Tokyo Night clarity” layer)
    --     --------------------------------------------------------
    --
    --     Function = { fg = colors.blue, style = { "bold" } },
    --     -- function names stand out clearly
    --
    --     Method = { fg = colors.blue },
    --     -- methods slightly less loud than functions
    --
    --     Parameter = { fg = colors.lavender, style = { "italic" } },
    --     -- input values to functions
    --
    --     Property = { fg = colors.teal },
    --     -- object properties (obj.field)
    --
    --     Variable = { fg = colors.text },
    --     -- normal variables (kept neutral on purpose)
    --
    --     Constant = { fg = colors.peach },
    --     -- fixed values (true, false, enums, etc.)
    --
    --     Keyword = { fg = colors.mauve, style = { "italic" } },
    --     -- if, else, return, etc.
    --
    --     Type = { fg = colors.yellow },
    --     -- classes, structs, type names
    --
    --     Constructor = { fg = colors.sapphire },
    --
    --     --------------------------------------------------------
    --     -- 🧭 UI CLARITY (editor readability)
    --     --------------------------------------------------------
    --
    --     LineNr = { fg = colors.surface1 },
    --     CursorLineNr = { fg = colors.peach, style = { "bold" } },
    --
    --     Visual = { bg = colors.surface0 },
    --     -- selection highlight
    --
    --     --------------------------------------------------------
    --     -- ⚠️ ERRORS / WARNINGS (LSP feedback)
    --     --------------------------------------------------------
    --
    --     DiagnosticError = { fg = colors.red },
    --     DiagnosticWarn = { fg = colors.yellow },
    --     DiagnosticInfo = { fg = colors.sky },
    --     DiagnosticHint = { fg = colors.teal },
    --
    --     --------------------------------------------------------
    --     -- 🌿 GIT VISUAL CUES
    --     --------------------------------------------------------
    --
    --     GitSignsAdd = { fg = colors.green },
    --     GitSignsChange = { fg = colors.peach },
    --     GitSignsDelete = { fg = colors.red },
    --   }
    -- end,

    ------------------------------------------------------------
    -- 🧷 DEFAULT BEHAVIOR
    ------------------------------------------------------------

    default_integrations = true,
  }
  vim.cmd.colorscheme 'catppuccin-mocha'
end
