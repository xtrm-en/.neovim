return {
	"zbirenbaum/copilot.lua",
	lazy = false,
	config = function()
		require("copilot").setup({
			suggestion = {
				auto_trigger = true,
				keymap = {
					accept = "<M-l>",
				},
			},
		})
		vim.keymap.set('i', '<Tab>', function()
		  if require("copilot.suggestion").is_visible() then
			require("copilot.suggestion").accept()
		  else
			vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Tab>", true, false, true), "n", false)
		  end
		end, { desc = "Super Tab" })
	end
}
