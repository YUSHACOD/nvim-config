vim.api.nvim_create_user_command(
	'LoadLeet',
	function()
		vim.cmd("Lazy load leetcode.nvim")
		vim.cmd("Leet")
	end,
	{} -- Options table (empty if no options)
)
