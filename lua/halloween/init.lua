local utils = require("halloween.utils")

local M = {}

function M.setup(options)
  require("halloween.config").setup(options)
end

function M.colorscheme()
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.opt.termguicolors = true
  vim.g.colors_name = "halloween"

  utils.apply_highlights()
end

return M
