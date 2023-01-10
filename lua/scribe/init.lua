-- https://github.com/Ostralyan/scribe.nvim
local M = {}
M.config = {}

local create_file = function(file_name)
	vim.cmd("e " .. vim.fn.getcwd() .. M.config.directory .. file_name .. M.config.file_ext)
end

M.open = function()
	vim.ui.input({ prompt = "Open/create note: " }, function(file_name)
		if file_name == "" then
			create_file(M.config.default_file_name)
		elseif file_name == nil then
			print("nil value provided; no file created")
			return
		else
			create_file(file_name)
		end
	end)
end

M.setup = function(user_args)
	local default_config = {
		directory = "/notes/",
		file_ext = ".md",
		default_file_name = "index",
	}
	M.config = vim.tbl_extend("force", default_config, user_args)
end

return M
