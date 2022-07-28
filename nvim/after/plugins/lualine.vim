lua << EOF

local status, lualine = pcall(require, "lualine")
if (not status) then return end

  local branch = {
  "branch",
  icons_enabled = true,
  icon = "",
}

local hide_in_width = function()
  return vim.fn.winwidth(0) > 80
end

local location = {
  "location",
  padding = 0,
}

local mode = {
  "mode",
  fmt = function(str)
      -- return "-- " .. str .. " --"
      return str
  end,
}

-- cool function for progress
local progress = function()
  local current_line = vim.fn.line "."
  local total_lines = vim.fn.line "$"
  local chars = { "__", "▁▁", "▂▂", "▃▃", "▄▄", "▅▅", "▆▆", "▇▇", "██" }
  local line_ratio = current_line / total_lines
  local index = math.ceil(line_ratio * #chars)
  return chars[index]
end

local diagnostics = {
	"diagnostics",
	sources = { "nvim_diagnostic" },
	sections = { "error", "info" },
	symbols = { error = " ", info = " " },
	colored = true,
	update_in_insert = false,
	always_visible = true,
}

lualine.setup {
  options = {
    icons_enabled = true,
		-- theme= 'solarized_dark',
		-- theme= 'catppuccin',
		 theme= 'everforest',
       section_separators = {left = '', right = ''},
       component_separators = {left = '', right = ''},
        -- section_separators = {left = '', right = ''},
       -- component_separators = {left = '', right = ''},
       -- section_separators = {left = '', right = ''},
      -- component_separators = {left = ')', right = '('},
     --  section_separators = {left = '', right = ''},

    disabled_filetypes = {}
},
  sections = {
    lualine_a = {mode
    },
    lualine_b = {
        branch,
        diagnostics,
    },
    lualine_c = {{
      'filename',
      file_status = true, -- displays file status (readonly status, modified status)
      path = 0, -- 0 = just filename, 1 = relative path, 2 = absolute path
      hide_in_width,
    }},

    lualine_x = {
         -- { 'diagnostics', sources = {"nvim_diagnostic"},
         -- symbols = {error = ' ', warn = ' ', info = ' ', warn = ' '} },
         -- symbols = {error = ' ', warn = ' ', info = ' ', warn = ' '} },
      'encoding',
      'filetype',
    },
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {{
      'filename',
      file_status = true, -- displays file status (readonly status, modified status)
      path = 0, -- 0 = just filename, 1 = relative path, 2 = absolute path
    }},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
tabline = {
  },
  extensions = {}
}

EOF
