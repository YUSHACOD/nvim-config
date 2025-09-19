local root_files = {
	'.luarc.json',
	'.luarc.jsonc',
	'.luacheckrc',
	'.stylua.toml',
	'stylua.toml',
	'selene.toml',
	'selene.yml',
	'.git',
}

return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		-- "hrsh7th/cmp-nvim-lsp",
		-- "hrsh7th/cmp-buffer",
		-- "hrsh7th/cmp-path",
		-- "hrsh7th/cmp-cmdline",
		-- "hrsh7th/nvim-cmp",
		"j-hui/fidget.nvim",
	},

	config = function()
		-- local cmp = require('cmp')
		-- local cmp_lsp = require("cmp_nvim_lsp")
		local capabilities = vim.tbl_deep_extend(
			"force",
			{},
			vim.lsp.protocol.make_client_capabilities())
			-- cmp_lsp.default_capabilities()

		require("fidget").setup({})
		require("mason").setup()
		require("mason-lspconfig").setup({
			ensure_installed = {
				"lua_ls",
				"rust_analyzer",
			},
			handlers = {
				function(server_name) -- default handler (optional)
					require("lspconfig")[server_name].setup {
						capabilities = capabilities
					}
				end,

				clangd = function()
					local lspconfig = require("lspconfig")
					lspconfig.clangd.setup({
						root_dir = lspconfig.util.root_pattern(
							"compile_commands.json",
							"compile_flags.txt",
							".clangd",
							".git"
						),

						-- Additional clangd-specific settings
						cmd = {
							"clangd",
							"--background-index",
							"--clang-tidy",
							"--query-driver=D:\\HeavyPrograms\\VS\\VC\\Tools\\MSVC\\14.44.35207\\bin\\HostX64\\x64\\cl.exe",
							-- Add or adjust flags here as needed:
							-- "--completion-style=detailed",
							-- "--header-insertion=iwyu",
						},

						-- Example of init_options for clangd
						init_options = {
							clangdFileStatus = true, -- Enables file status via LSP
							usePlaceholders = true, -- Enables placeholders on completion
							completeUnimported = true, -- Suggests completions for unimported headers/types
						},

						-- Optional: LSP-specific settings (if needed)
						settings = {
							-- clangd currently doesn't take user-defined settings, but you can include them here if future versions do
							clangd = {
								arguments = { "--query-driver=D:\\HeavyPrograms\\VS\\VC\\Tools\\MSVC\\14.44.35207\\bin\\HostX64\\x64\\cl.exe" },
							},
						},
					})
				end,

				zls = function()
					local lspconfig = require("lspconfig")
					lspconfig.zls.setup({
						root_dir = lspconfig.util.root_pattern(".git", "build.zig", "zls.json"),
						settings = {
							zls = {
								enable_inlay_hints = true,
								enable_snippets = true,
								warn_style = true,
							},
						},
					})
					vim.g.zig_fmt_parse_errors = 0
					vim.g.zig_fmt_autosave = 0
				end,
				["lua_ls"] = function()
					local lspconfig = require("lspconfig")
					lspconfig.lua_ls.setup {
						capabilities = capabilities,
						settings = {
							Lua = {
								format = {
									enable = true,
									-- Put format options here
									-- NOTE: the value should be STRING!!
									defaultConfig = {
										indent_style = "space",
										indent_size = "2",
									}
								},
							}
						}
					}
				end,
			}
		})

		-- local cmp_select = { behavior = cmp.SelectBehavior.Select }
		--
		-- cmp.setup({
		-- 	mapping = cmp.mapping.preset.insert({
		-- 		['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
		-- 		['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
		-- 		['<Enter>'] = cmp.mapping.confirm({ select = true }),
		-- 		["<C-Space>"] = cmp.mapping.complete(),
		-- 	}),
		-- 	sources = cmp.config.sources({
		-- 		{ name = 'nvim_lsp' },
		-- 	}, {
		-- 		{ name = 'buffer' },
		-- 	})
		-- })

		vim.diagnostic.config({
			-- update_in_insert = true,
			float = {
				focusable = false,
				style = "minimal",
				border = "rounded",
				source = true,
				header = "",
				prefix = "",
			},
		})
	end
}
