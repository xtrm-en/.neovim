local mapkey = require("util.keymapper").mapkey

local config = function()
	local telescope = require("telescope")
	telescope.setup({
		defaults = {
			mappings = {
				i = {
					["<C-j>"] = "move_selection_next",
					["<C-k>"] = "move_selection_previous",
				},
			},
		},
		extensions = {
			fzf = {
				fuzzy = true,                    -- false will only do exact matching
				override_generic_sorter = true,  -- override the generic sorter
				override_file_sorter = true,     -- override the file sorter
				case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
			}
		}
	})
end

return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.5",
	lazy = false,
	dependencies = { "nvim-lua/plenary.nvim" },
	config = config,
	keys = {
		mapkey("<leader>fk", "Telescope keymaps", "n"),
		mapkey("<leader>fh", "Telescope help_tags", "n"),
		mapkey("<leader>ff", "Telescope find_files", "n"),
		mapkey("<leader>fg", "Telescope live_grep", "n"),
		mapkey("<leader>fb", "Telescope buffers", "n"),
	},
}
