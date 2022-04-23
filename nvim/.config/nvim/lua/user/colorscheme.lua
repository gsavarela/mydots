-- Colorschemes
-- local colorscheme = "gruvbox"
local colorscheme = "gruvbox-baby"

vim.g.gruvbox_baby_background = 'medium'
-- Set this on the nvim/lua/user/options.lua
-- Example config in Lua
-- vim.g.gruvbox_baby_function_style = "NONE"
-- vim.g.gruvbox_baby_keyword_style = "italic"
--
-- -- Each highlight group must follow the structure:
-- -- ColorGroup = {fg = "foreground color", bg = "background_color", style = "some_style(:h attr-list)"}
-- -- See also :h highlight-guifg
-- -- Example:
-- vim.g.gruvbox_baby_highlights = {Normal = {fg = "#123123", bg = "NONE", style="underline"}}
--
-- -- Enable telescope theme
-- vim.g.gruvbox_baby_telescope_theme = 1
--
-- -- Enable transparent mode
-- vim.g.gruvbox_baby_transparent_mode = 0
--
-- vim.opt.termguicolors = true
-- vim.o.background = "dark" -- or "light" for light mode
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
