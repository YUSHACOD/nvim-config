function SeeThroughBuffer()
	vim.cmd('highlight TelescopeBorder guibg=none')
	vim.cmd('highlight TelescopeTitle guibg=none')
	require('lualine').setup()
end

SeeThroughBuffer()
