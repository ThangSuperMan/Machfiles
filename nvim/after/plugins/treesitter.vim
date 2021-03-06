lua << EOF

require'nvim-treesitter.configs'.setup {
	highlight = {
    enable = true,
    disable = {},
  },
	indent = {
    enable = true,
    disable = {},
  },
 ensure_installed = {
    "javascript",
    "go",
   	"tsx",
    "html",
    "ruby",
    "lua",
  },
  autotag = {
    enable = true,
  }
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }

EOF
