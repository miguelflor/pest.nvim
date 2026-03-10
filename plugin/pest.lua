local parsers = require 'nvim-treesitter.parsers'

local configs = parsers.get_parser_configs()  -- hold the reference
configs.pest = {                               -- mutate it directly
  install_info = {
    url = 'https://github.com/miguelflor/tree-sitter-pest',
    revision  = 'b23fd07600575dad6bb6a11df7c3bb5eed122f1d',
    files = { 'src/parser.c' },
  },
  filetype = 'pest',
}

