local scribe = require("scribe")

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*" .. scribe.config.directory .. "**",
	desc = "create any parent dir that might not exist",
	callback = function()
		local dir = vim.fn.expand("<afile>:p:h")
		if dir:find("%l+://") == 1 then
			return
		end
		if vim.fn.isdirectory(dir) == 0 then
			vim.fn.mkdir(dir, "p")
		end
	end,
})