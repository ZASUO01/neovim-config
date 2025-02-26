return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			-- "                                                     ",
			-- "                                                     ",
			"                                                     ",
			"  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
			"  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
			"  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
			"  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
			"  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
			"  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
			"                                                     ",
			-- "                                                     ",
			-- "                                                     ",
			-- "                                                     ",
		}

		dashboard.section.buttons.val = {
			dashboard.button("SPC ee", " > Toggle File Explorer", "<cmd>Neotree toggle<cr>"),
			dashboard.button("SPC ff", "󰮗 > Find File", "<cmd>Telescope find_files<cr>"),
			dashboard.button("SPC fg", "󰾹 > Find Word", "<cmd>Telescope live_grep<cr>"),
			dashboard.button("q", "󰿅 > Quit Nvim", "<cmd>qa<cr>"),
		}

		alpha.setup(dashboard.opts)

		vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
	end,
}
