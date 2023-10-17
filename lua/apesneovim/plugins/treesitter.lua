return {
	'nvim-treesitter/nvim-treesitter',
	update = function()
		vim.cmd('TSUpdate')
	end,
	config = function()
		require('nvim-treesitter.configs').setup {
  			ensure_installed = { "javascript", "python", "typescript", "lua", "vim", "query" },

  			sync_install = false,

  			auto_install = true,


  			highlight = {
    			enable = true,

    			additional_vim_regex_highlighting = false,
  			},
		}
	end
}
