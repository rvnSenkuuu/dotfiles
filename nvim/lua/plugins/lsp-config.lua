return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "clangd", "rust_analyzer" }
			})
		end
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require('cmp_nvim_lsp').default_capabilities()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilities
			})
			lspconfig.clangd.setup({
				capabilities = capabilities
			})
			lspconfig.rust_analyzer.setup({
				capabilities = capabilities
			})

			vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = "Hover" })
			vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { desc = "Go to declaration" })
			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = "Go to definition" })
			vim.keymap.set('n', 'gr', vim.lsp.buf.references, {})
			vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, { desc = "Code action" })
		end
	}
}
