function SeeThroughBuffer()
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	vim.cmd('highlight TelescopeBorder guibg=none')
	vim.cmd('highlight TelescopeTitle guibg=none')
end

SeeThroughBuffer()
