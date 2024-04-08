return {
	"mistricky/codesnap.nvim",

	build = "make",

	config = function()
		require("codesnap").setup({
			save_path = "~/Pictures/images.png",
			mac_window_bar = true,
			title = "CodeSnap.nvim",
			code_font_family = "CaskaydiaCove Nerd Font",
			watermark_font_family = "Pacifico",
			watermark = "Ligma",
			bg_theme = "default",
			breadcrumbs_separator = "/",
			has_breadcrumbs = false,
		})
	end

}
