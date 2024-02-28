local config = function()
	require("nvim-treesitter.configs").setup({
		indent = {
			enable = true,
		},
		autotag = {
			enable = true,
		},
		ensure_installed = {
			"markdown",
			"json",
			"java",
			"kotlin",
			"c",
			"cpp",
			"javascript",
			"typescript",
			"yaml",
			"toml",
			"html",
			"css",
			"bash",
			"lua",
			"dockerfile",
			"gitignore",
			"python",
			"vue",
			"jq",
			"json5",
			"nasm",
			"groovy",
			"go",
			"rust",
		},
		auto_install = true,
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = true,
		},
	})
end

return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	config = config,
}
