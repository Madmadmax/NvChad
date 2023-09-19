local present, aerial = pcall(require, "aerial")

if not present then
  return
end


local M = {}
local utils = require "core.utils"


M.on_attach = function(bufnr)
  utils.load_mappings("aerial", { buffer = bufnr })
  end

aerial.setup {
  on_attach = M.on_attach,
}

return M

