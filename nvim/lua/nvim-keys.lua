local keys = {}
local keymap = vim.keymap

function keys.init()
	-- Window cursor movement
	keymap.set("n", '<C-h>', '<C-w>h', {desc = "Go to left window , silent = true"})
	keymap.set("n", '<C-l>', '<C-w>l', {desc = "Go to right window , silent = true"})
	keymap.set("n", '<C-j>', '<C-w>j', {desc = "Go to lower window , silent = true"})
	keymap.set("n", '<C-k>', '<C-w>k', {desc = "Go to upper window , silent = true"})
	  -- Resize window
 	keymap.set("n", "<S-Up>", "<CMD>resize +2<CR>", { desc = "Increase window height", silent = true })
	keymap.set("n", "<S-Down>", "<CMD>resize -2<CR>", { desc = "Decrease window height", silent = true })
	keymap.set("n", "<S-Left>", "<CMD>vertical resize -2<CR>", { desc = "Decrease window width", silent = true })
	keymap.set("n", "<S-Right>", "<CMD>vertical resize +2<CR>", { desc = "Increase window width", silent = true })
	 -- Others
	keymap.set("n", "<leader>wd", "<C-W>c", { desc = "Delete window", silent = true })
	keymap.set("n", "<leader>wy", "<C-W>s", { desc = "Split window below", silent = true })
	keymap.set("n", "<leader>wx", "<C-W>v", { desc = "Split window right", silent = true })
	-- Tab
	keymap.set("n", "<leader>tn", "<CMD>tabnew<CR>", {desc = "New Tab", silent = true})
	keymap.set("n", "<leader>td", "<CMD>tabclose<CR>", {desc = "Close Tab", silent = true})
	keymap.set("n", "<S-h>", "<CMD>tabprevious<CR>", {desc = "Previous buffer", silent = true})
	keymap.set("n", "<S-l>", "<CMD>tabnext<CR>", {desc = "Next buffer", silent = true})
	keymap.set("n", "<S-j>", "<CMD>-tabmove<CR>", {desc = "Move tab to the left", silent = true, noremap = true})
	keymap.set("n", "<S-k>", "<CMD>+tabmove<CR>", {desc = "Move tab to the right", silent = true})
	--Move line
	keymap.set("v", "J", ":m '>+1<CR>gv=gv", {desc = "Move line up", silent = true})
	keymap.set("v", "K", ":m '<-2<CR>gv=gv", {desc = "Move line down", silent = true})
end

return keys
