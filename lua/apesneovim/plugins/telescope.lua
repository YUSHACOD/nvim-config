return {
	'nvim-telescope/telescope.nvim', tag = '0.1.4',
		dependencies = { 'nvim-lua/plenary.nvim' },

	--Config
	config = function()
		local builtin = require('telescope.builtin')
	  -- A list of parser names, or "all" (the five listed parsers should always be installed)
	  	vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
	  	vim.keymap.set('n', '<C-p>', builtin.git_files, {})
	  	vim.keymap.set('n', '<leader>ps', function()
		  builtin.grep_string({ search = vim.fn.input("Grep > ") });
	  	end)
	end
}

