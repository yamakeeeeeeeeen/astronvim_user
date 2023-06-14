-- return {
--   -- Configure AstroNvim updates
--   updater = {
--     remote = "origin", -- remote to use
--     channel = "stable", -- "stable" or "nightly"
--     version = "latest", -- "latest", tag name, or regex search like "v1.*" to only do updates before v2 (STABLE ONLY)
--     branch = "nightly", -- branch name (NIGHTLY ONLY)
--     commit = nil, -- commit hash (NIGHTLY ONLY)
--     pin_plugins = nil, -- nil, true, false (nil will pin plugins on stable only)
--     skip_prompts = false, -- skip prompts about breaking changes
--     show_changelog = true, -- show the changelog after performing an update
--     auto_quit = false, -- automatically quit the current session after a successful update
--     remotes = { -- easily add new remotes to track
--       --   ["remote_name"] = "https://remote_url.come/repo.git", -- full remote url
--       --   ["remote2"] = "github_user/repo", -- GitHub user/repo shortcut,
--       --   ["remote3"] = "github_user", -- GitHub user assume AstroNvim fork
--     },
--   },
--
--   -- Set colorscheme to use
--   colorscheme = "astrodark",
--
--   -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
--   diagnostics = {
--     virtual_text = true,
--     underline = true,
--   },
--
--   lsp = {
--     -- customize lsp formatting options
--     formatting = {
--       -- control auto formatting on save
--       format_on_save = {
--         enabled = true, -- enable or disable format on save globally
--         allow_filetypes = { -- enable format on save for specified filetypes only
--           -- "go",
--         },
--         ignore_filetypes = { -- disable format on save for specified filetypes
--           -- "python",
--         },
--       },
--       disabled = { -- disable formatting capabilities for the listed language servers
--         -- disable lua_ls formatting capability if you want to use StyLua to format your lua code
--         -- "lua_ls",
--       },
--       timeout_ms = 1000, -- default format timeout
--       -- filter = function(client) -- fully override the default formatting function
--       --   return true
--       -- end
--     },
--     -- enable servers that you already have installed without mason
--     servers = {
--       -- "pyright"
--     },
--   },
--
--   -- Configure require("lazy").setup() options
--   lazy = {
--     defaults = { lazy = true },
--     performance = {
--       rtp = {
--         -- customize default disabled vim plugins
--         disabled_plugins = { "tohtml", "gzip", "matchit", "zipPlugin", "netrwPlugin", "tarPlugin" },
--       },
--     },
--   },
--
--   -- This function is run last and is a good place to configuring
--   -- augroups/autocommands and custom filetypes also this just pure lua so
--   -- anything that doesn't fit in the normal config locations above can go here
--   polish = function()
--     -- Set up custom filetypes
--     -- vim.filetype.add {
--     --   extension = {
--     --     foo = "fooscript",
--     --   },
--     --   filename = {
--     --     ["Foofile"] = "fooscript",
--     --   },
--     --   pattern = {
--     --     ["~/%.config/foo/.*"] = "fooscript",
--     --   },
--     -- }
--   end,
-- }
-- local actions = require "telescope.actions"
-- theme settings
vim.o.background = "dark"
vim.g.everforest_transparent_background = 2
vim.g.gruvbox_baby_telescope_theme = 1
vim.g.gruvbox_baby_transparent_mode = 1
vim.g.gruvbox_material_transparent_background = 2
vim.g.gruvbox_material_background = "hard"

-- local schemes = { "gruvbox-material", "everforest", "nordfox", "duskfox" }
local config = {
  -- Set colorscheme
  colorscheme = "gruvbox-material",
  -- colorscheme = "tokyonight",
  -- colorscheme = "everforest",
  -- colorscheme = "default_theme",

  -- Default theme configuration
  default_theme = {
    diagnostics_style = { italic = true },
    -- Modify the color table
    colors = { fg = "#abb2bf" },
    -- Modify the highlight groups
    highlights = function(highlights)
      local C = require "default_theme.colors"

      highlights.Normal = { fg = C.fg, bg = C.bg }
      return highlights
    end
  },

  -- Disable default plugins
  enabled = {
    bufferline = true,
    neo_tree = true,
    lualine = true,
    gitsigns = true,
    colorizer = true,
    toggle_term = true,
    comment = true,
    symbols_outline = true,
    indent_blankline = true,
    dashboard = true,
    which_key = true,
    neoscroll = true,
    ts_rainbow = true,
    ts_autotag = true
  },

  -- Disable AstroNvim ui feature
  ui = { nui_input = true, telescope_select = true },

  -- Modify which-key registration
  -- ["which-key"] = {
  -- Add bindings to the normal mode <leader> mappings
  -- register_n_leader = {
  -- ["N"] = { "<cmd>tabnew<cr>", "New Buffer" },
  --   },
  -- },

  -- Diagnostics configuration (for vim.diagnostics.config({}))
  diagnostics = { virtual_text = true, underline = true }
}

return config
