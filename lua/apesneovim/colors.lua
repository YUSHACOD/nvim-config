--function ColorMyPencils(color)

--	color = color or "onedark"
--	vim.cmd.colorscheme(color)

--end

function SeeThroughBuffer()

	require('onedark').setup  {
    	transparent = true,  -- Show/hide background
	}

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" }) 
	vim.cmd('highlight TelescopeBorder guibg=none')
	vim.cmd('highlight TelescopeTitle guibg=none')

end

function OpaqueMyBuffer()

	require('onedark').setup  {
    	transparent = false,  -- Show/hide background
	}

end

--ColorMyPencils()
SeeThroughBuffer()
require('onedark').load()
