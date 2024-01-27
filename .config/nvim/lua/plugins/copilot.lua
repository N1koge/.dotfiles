return {
	{
		"github/copilot.vim",
		lazy = false,
		cmd = "Copilot",
		cond = function()
			local cwd = vim.fn.getcwd()

			if string.find(cwd, vim.fn.expand("~/git/yumemi")) then
				return false
			else
				return true
			end
		end,
		config = function()
			vim.keymap.set("i", "<C-J>", 'copilot#Accept("<CR>")', {
				expr = true,
				replace_keycodes = false,
			})
			vim.g.copilot_no_tab_map = true
			vim.g.copilot_filetypes = {
				gitcommit = true,
			}
		end,
	},
}
