local M = {}

function M.setup(opts)
  vim.lsp.config("pest_ls", opts)
  vim.lsp.enable("pest_ls")
end

return M
