local red = "#9e6042"
local dark_red = "#6d1500"
local light_red = "#f88e49"
local orange = "#a29135"
local light_orange = "#f0c63e"
local dark_purple = "#2b1c29"
local magenta = "#8b292e"
local dark_pink = "#b77d6e"
local pink = "#ff4500"
local light_pink = "#f6c8a7"
local gray = "#8b8b8b"

local bg = "#000000"
local bg_float = "#101010"
local bg_float_bright = "#121212"
local fg = "#C9C1C9"
local fg_gutter = "#8A95A2"
local fg_dark = "#4D5566"

local M = {}

local colors = {
  red = red,
  dark_red = dark_red,
  light_red = light_red,
  light_orange = light_orange,
  orange = orange,
  magenta = magenta,
  pink = pink,
  dark_pink = dark_pink,
  light_pink = light_pink,
  gray = gray,

  bg = bg,
  bg_float = bg_float,
  bg_float_bright = bg_float_bright,
  bg_visual = dark_purple,

  fg = fg,
  fg_dark = fg_dark,
  fg_gutter = fg_gutter,
  border = gray,
  cursor = pink,

  error = light_red,
  warning = light_orange,
  info = orange,
  hint = magenta,

  diff = {
    add = dark_pink,
    change = magenta,
    delete = red,
  },

  syntax = {
    keyword = pink,
    type = magenta,
    variable = fg_gutter,
    func = dark_pink,
    literal = orange,
    string = red,
    param = fg,
    field = light_pink,
    comment = gray,
  },

  markup = {
    link = pink,
    h1 = red,
    h2 = orange,
    h3 = magenta,
    h4 = dark_pink,
    h5 = pink,
    h6 = light_pink,
  },
}

M.get = function()
  local options = require("halloween.config").options
  return vim.tbl_deep_extend("force", colors, options.colors)
end

return M
