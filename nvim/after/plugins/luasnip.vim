lua << EOF

---- MUST HAVE ----{{{
local ls = require("luasnip")

require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/snippets/" })

ls.config.set_config({
	history = true, -- keep around last snippet local to jump back
	updateevents = "TextChanged,TextChangedI", -- update changes as you type (when using functionNode or Dynamic Node)
	enable_autosnippets = true,
	ext_opts = {
		[require("luasnip.util.types").choiceNode] = {
			active = {
				virt_text = { { "●", "GruvboxOrange" } },
			},
		},
	},
})

-- Key Maps
vim.keymap.set({ "i", "s" }, "<a-p>", function()
	if ls.expand_or_jumpable() then
		ls.expand()
	end
end)

-- Jump to next
vim.keymap.set({ "i", "s" }, "<c-j>", function()
	if ls.jumpable(1) then
		ls.jump(1)
	end
end)

-- Jump to previous
vim.keymap.set({ "i", "s" }, "<c-k>", function()
	if ls.jumpable(-1) then
		ls.jump(-1)
	end
end)

vim.keymap.set({ "i", "s" }, "<c-c>", function()
	if ls.choice_active() then
		ls.change_choice(1)
	end
end)
vim.keymap.set({ "i", "s" }, "<a-h>", function()
	if ls.choice_active() then
		ls.change_choice(-1)
	end
end) --}}}

EOF
