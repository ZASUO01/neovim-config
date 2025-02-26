return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			size = 10,
			direction = "float",
			shell = "/bin/zsh",
		})

		local keymap = vim.keymap

		keymap.set("n", "<C-]>", "<cmd>ToggleTerm<cr>", { desc = "open the terminal" })
		keymap.set("t", "<C-]>", "<cmd>ToggleTerm<cr>", { desc = "close the terminal" })
	end,
}
