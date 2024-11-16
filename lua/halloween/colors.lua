local red = "#D84B16"
local dark_red = "#9C1B00"
local light_red = "#FF5E00"
local orange = "#FF6A13"
local light_orange = "#FF8C42"
local dark_purple = "#6E0F0F"
local magenta = "#C64C48"
local dark_pink = "#9E3B2E"
local pink = "#FF2F1A"
local light_pink = "#FFB2A6"
local gray = "#7A7A7A"

local bg = "#000000"
local bg_float = "#101010"
local bg_float_bright = "#121212"
local fg = "#C9C1C9"
local fg_gutter = "#8A95A2"
local fg_dark = "#4D5566"

--local fg = "#FFD1A3"
--local fg_gutter = "#C17A52"
--local fg_dark = "#8A3C2F"

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
