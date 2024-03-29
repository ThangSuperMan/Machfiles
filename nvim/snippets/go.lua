local ls = require("luasnip") --{{{
local s = ls.s --> snippet
local i = ls.i --> insert node
local t = ls.t --> text node

local d = ls.dynamic_node
local c = ls.choice_node
local f = ls.function_node
local sn = ls.snippet_node

local fmt = require("luasnip.extras.fmt").fmt
local rep = require("luasnip.extras").rep

local snippets, autosnippets = {}, {} --}}}

local group = vim.api.nvim_create_augroup("Javascript Snippets", { clear = true })
local file_pattern = "*.go"

local drop_table = s(
 "drop-table",
  fmt([[
    drop table {};
  ]], 
    {
      i(1, "tableName"),
    }
  )
)

local select_all = s(
 "s*",
  fmt([[
    select * from {}
  ]], 
    {
      i(1, "tableName"),
    }
  )
)

local if_statement = s(
 "if-s",
  fmt([[
    if {} {{
      {}
    }}
  ]], 
    {
      i(1, ""),
      i(2, "// TODO"),
    }
  )
)

local if_else_statement = s(
 "if-es",
  fmt([[
    if {} {{
      {}
    }} else {{
      {}
    }}
  ]], 
    {
      i(1, ""),
      i(2, "// TODO"),
      i(3, "// TODO"),
    }
  )
)


table.insert(snippets, select_all)
table.insert(snippets, drop_table)
table.insert(snippets, if_statement)
table.insert(snippets, if_else_statement)



-- End Refactoring --

return snippets, autosnippets

