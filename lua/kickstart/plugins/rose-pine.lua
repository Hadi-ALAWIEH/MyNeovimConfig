-- lua/plugins/rose-pine.lua
return {
  'rose-pine/neovim',
  name = 'rose-pine',
  priority = 1000, -- Load early
  config = function()
    require('rose-pine').setup {
      variant = 'auto',
      -- dark_variant = 'moon', -- either dawn, moon or main
      dark_variant = 'main', -- either dawn, moon or main
      dim_inactive_windows = true,
      extend_background_behind_borders = true,

      enable = {
        terminal = true,
        legacy_highlights = true,
        migrations = true,
      },

      styles = {
        bold = false,
        italic = false,
        transparency = false,
      },

      groups = {
        border = 'muted',
        link = 'iris',
        panel = 'surface',
        error = 'love',
        hint = 'iris',
        info = 'foam',
        note = 'pine',
        todo = 'rose',
        warn = 'gold',
        git_add = 'foam',
        git_change = 'rose',
        git_delete = 'love',
        git_dirty = 'rose',
        git_ignore = 'muted',
        git_merge = 'iris',
        git_rename = 'pine',
        git_stage = 'iris',
        git_text = 'rose',
        git_untracked = 'subtle',
        h1 = 'iris',
        h2 = 'foam',
        h3 = 'rose',
        h4 = 'gold',
        h5 = 'pine',
        h6 = 'foam',
      },

      palette = {
        moon = {
          base = '#18191a',
          overlay = '#363738',
        },
      },

      highlight_groups = {
        -- Comment = { fg = 'foam' },
        Visual = { bg = '#FFFFFF', fg = 'None' },
      },

      before_highlight = function(group, highlight, palette)
        -- Custom highlight tweaks if needed
      end,
    }

    vim.cmd 'colorscheme rose-pine'
  end,
}
