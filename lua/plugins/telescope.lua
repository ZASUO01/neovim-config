return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local builtin = require("telescope.builtin")
		local keymap = vim.keymap

		keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
		keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })

		require("telescope").load_extension("fzf")
	end,
}
