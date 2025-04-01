return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
          "lua_ls",
          "phpactor",
          "ts_ls",
          "cssls",
          "bashls",
          "yamlls",
          "html",
          "pyright",
          "dockerls",
        },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
      lspconfig.phpactor.setup({})
      lspconfig.ts_ls.setup({})
      lspconfig.cssls.setup({})
      lspconfig.yamlls.setup({})
      lspconfig.html.setup({})
      lspconfig.pyright.setup({})
      lspconfig.dockerls.setup({})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
