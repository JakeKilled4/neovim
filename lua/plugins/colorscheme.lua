--return { 
--  "ellisonleao/gruvbox.nvim", 
--  lazy = false,  -- make sure we load this during startup if it is your main colorscheme
--  priority = 1000, -- make sure to load this before all the other start plugins
--  config = function()
--    require("gruvbox").setup({
--      terminal_colors = true, -- add neovim terminal colors
--      undercurl = true,
--      underline = true,
--      bold = true,
--      italic = {
--        strings = true,
--        emphasis = true,
--        comments = true,
--        operators = false,
--        folds = true,
--      },
--      strikethrough = true,
--      invert_selection = false,
--      invert_signs = false,
--      invert_tabline = false,
--      invert_intend_guides = false,
--      inverse = true, -- invert background for search, diffs, statuslines and errors
--      contrast = "", -- can be "hard", "soft" or empty string
--      palette_overrides = {},
--      overrides = {
--        SignColumn = {bg = "#ff9900", fg="#ffffff"},
--      },
--      dim_inactive = false,
--      transparent_mode = false,
--    })
--    -- load the colorscheme here
--    vim.cmd([[colorscheme gruvbox]])
--    vim.o.background = "dark" -- or "light" for light mode
--  end,
--}

--return {
--  "almo7aya/neogruvbox.nvim",
--  lazy = false,  -- make sure we load this during startup if it is your main colorscheme
--  priority = 1000, -- make sure to load this before all the other start plugins
--  config = function()
--    vim.cmd([[colorscheme neogruvbox]])
--    vim.o.background = "dark" -- or "light" for light mode
--  end,
--}


return {
  "luisiacc/gruvbox-baby",
  lazy = false,  -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    vim.o.background = "dark" -- or "light" for light mode
    -- Example config in Lua
    vim.g.gruvbox_baby_function_style = "NONE"
    vim.g.gruvbox_baby_keyword_style = "italic"

    -- Each highlight group must follow the structure:
    -- ColorGroup = {fg = "foreground color", bg = "background_color", style = "some_style(:h attr-list)"}
    -- See also :h highlight-guifg
    -- Example:

    -- Enable telescope theme
    --vim.g.gruvbox_baby_telescope_theme = 1
    local colors = require("gruvbox-baby.colors").config()
    vim.g.gruvbox_baby_highlights = {Quickfix = {bg = colors.orange}}

    -- Enable transparent mode
    vim.g.gruvbox_baby_transparent_mode = 1
    vim.cmd([[colorscheme gruvbox-baby]])
  end,
}
