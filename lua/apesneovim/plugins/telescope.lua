return {
	'nvim-telescope/telescope.nvim',
	dependencies = { 'nvim-lua/plenary.nvim' },

	--Config
	config = function()
		local builtin = require('telescope.builtin')
		-- A list of parser names, or "all" (the five listed parsers should always be installed)
		vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
		vim.keymap.set('n', '<leader>ps', function()
			builtin.grep_string({ search = vim.fn.input("Grep > ") });
		end)
	end
}
