local others = {
	"asmfmt",
	"black",
	"clang-format",
	"codelldb",
	"cpplint",
	"cpptools",
	"detekt",
	"fixjson",
	"gopls",
	"ktlint",
	"markdownlint",
	"luaformatter",
	"jsonld-lsp",
	"mypy",
	"jq",
	"prettierd",
	"yq",
	"yamlfix",
	"shfmt",
	"vscode-java-decompiler",
}

local opts = {
	ensure_installed = {
		"bashls",
		"tsserver",
		"tailwindcss",
		"pyright",
		"html",
		"cssls",
		"lua_ls",
		"emmet_ls",
		"jsonls",
		"efm",
--		"asm_lsp",
		"clangd",
		"dockerls",
		"docker_compose_language_service",
		"kotlin_language_server",
		"ltex",
		"pylsp",
		"remark_ls",
		"rnix",
		"rust_analyzer",
		"sqlls",
	},

	automatic_installation = true,
}

return {
	"williamboman/mason-lspconfig.nvim",
	opts = opts,
	event = "BufReadPre",
	dependencies = "williamboman/mason.nvim",
}
