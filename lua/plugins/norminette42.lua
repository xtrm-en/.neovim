return { 
	"hardyrafael17/norminette42.nvim",
	lazy = false,
	config = function()
		require("norminette").setup({
			runOnSave = true,
			maxErrorsToShow = 20,
			active = true,
		})
	end,
}
