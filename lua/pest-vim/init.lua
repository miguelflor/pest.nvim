local M = {}

function M.setup(opts)
  -- Doing the lsp setup here can interfere with the lsp configuration of the user
  -- vim.lsp.config("pest_ls", opts)
  -- vim.lsp.enable("pest_ls")
end

return M
