return {


	'maxmx03/dracula.nvim',

	config = function()
		local dracula = require 'dracula'

		dracula.setup()

		vim.cmd.colorscheme 'dracula'
		local dracula = require 'dracula'



		dracula.setup {
			soft = true,
			transparent = true,
			saturation = {

				enabled = true,
				amount = 10,
			},

		}
	end
}
