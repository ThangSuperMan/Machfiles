-- Go
function automaticGoRunOnSave()
local bufnr = vim.api.nvim_win_get_buf(0)

--                           On save event
vim.api.nvim_create_autocmd("BufWritePost", {
	group = vim.api.nvim_create_augroup("ThangCoolHaha", { clear = true }),
	pattern = "*.go",
	callback = function()
		vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, { "output of: main.go" })
		vim.fn.jobstart({"go", "run", "main.go"}, {
			 stdout_buffered = true,
			-- Sending console
			on_stdout = function(_, data)
			if data then
					vim.api.nvim_buf_set_lines(bufnr, -1, -1, false, data)
				end
			end,
			-- Sending error
			on_stderr = function(_, data)
			if data then
					vim.api.nvim_buf_set_lines(bufnr, -1, -1, false, data)
				end
			end,
		})
	end,
})
end

-- vim.api.nvim_set_keymap("n", ",r", "<cmd>lua automaticGoRunOnSave()<CR>", {noremap = true})
-- -- Split window and go to that window and after that call the funtion
vim.api.nvim_set_keymap("n", ",r", ":vsplit<Return>:vertical resize 35<CR>:e gorun.txt<CR>:<cmd>lua automaticGoRunOnSave()<CR>", {noremap = true})
