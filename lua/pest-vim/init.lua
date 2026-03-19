local M = {}

function M.setup(opts)
  -- Doing the lsp setup here can interfere with the lsp configuration of the user
  -- vim.lsp.config("pest_ls", opts)
  -- vim.lsp.enable("pest_ls")
  local plugin_path = vim.fn.fnamemodify(debug.getinfo(1, "S").source:sub(2), ":h:h:h")


  vim.api.nvim_create_autocmd("User", {
    pattern = "TSUpdate",
    callback = function()
      require("nvim-treesitter.parsers").pest = {
        install_info = {
          url      = "https://github.com/miguelflor/tree-sitter-pest",
          revision = "b23fd07600575dad6bb6a11df7c3bb5eed122f1d",
          files    = { "src/parser.c" },
          queries  = plugin_path .. "/queries/pest"
        },
        filetype = "pest",
      }
    end,
  })

  vim.api.nvim_create_autocmd("FileType", {
    pattern = "pest",
    callback = function()
      vim.treesitter.start()
    end,
  })

  local ok, devicons = pcall(require, "nvim-web-devicons")
  if not ok then return end

  devicons.set_icon({
    pest = {
      icon = "",
      color = "#F5A623",
      cterm_color = "214",
      name = "Pest",
    },
  })

  local ok, mini_icons = pcall(require, "mini.icons")
  if not ok then return end

  mini_icons.setup({
    extension = {
      pest = { glyph = "", hl = "MiniIconsYellow" },
    },
  })
end

return M
