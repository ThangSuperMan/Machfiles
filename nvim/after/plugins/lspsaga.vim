  " error_sign = '',
      " | :%s :%s :%s :%s "
lua << EOF
local saga = require "lspsaga"

saga.init_lsp_saga {
  error_sign = 'E',
  warn_sign = 'W',
  hint_sign = '',
  infor_sign = 'I',
  border_style = "round",
}

EOF

nnoremap <silent> <C-e> :Lspsaga diagnostic_jump_next<CR>
" nnoremap <silent> K <cmd>lua require("lspsaga.hover').render_hover_doc()<CR>
nnoremap <silent> gp :Lspsaga preview_definition<CR>

