local themes = {
	"gruvbox",
	"dracula",
	"moonfly",
	"rose-pine",
}

local function set_theme(theme)
	vim.cmd("colorscheme " .. theme)
	vim.notify("Current Theme: " .. theme, vim.log.levels.INFO)
end

-- start theme
math.randomseed(os.time())
local startIdx = math.random(1, #themes)

vim.g.current_theme = themes[startIdx]
set_theme(vim.g.current_theme)

local function index_of(table, value)
	for i, v in ipairs(table) do
		if v == value then
			return i
		end
	end
	return nil
end

vim.api.nvim_create_user_command("NextTheme", function()
	local index = index_of(themes, vim.g.current_theme) or 0
	local next_index = (index % #themes) + 1
	vim.g.current_theme = themes[next_index]
	set_theme(vim.g.current_theme)
end, {})

local keymap = vim.keymap
keymap.set("n", "<leader>cc", "<cmd>NextTheme<cr>", { desc = "Switch To Next Theme." })
