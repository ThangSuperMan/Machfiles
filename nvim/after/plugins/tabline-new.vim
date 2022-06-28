lua << EOF

require('tabline').setup({
    show_index = true,        -- show tab index
    show_modify = true,       -- show buffer modification indicator
    modify_indicator = '+', -- modify indicator
    no_name = 'No name',    -- no name buffer name
})

EOF
