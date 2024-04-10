local opts = {}
local opt = vim.opt

function opts.init()
	opt.autoread = true -- Read a file when it was changed outside of nvim
	opt.autowrite = true -- Automatically write file when it was changed
	opt.encoding = "UTF-8" -- Encoding

	opt.number = true -- Number in front of each line
	opt.relativenumber = true -- Relative number in front of each line

	opt.wrap = false -- Long line are not wrapped
	opt.completeopt = {"menu","menuone","noselect","preview"}

	opt.splitright = true -- Cursor go on the right windows when split
	opt.splitbelow = true -- Cursor go on the left window when split
	opt.equalalways = true

	opt.confirm = true -- Confirm before closing an unsaved buffer	
	opt.winbar = "" -- Disable winbar

	opt.ignorecase = true -- Case insensitive
	opt.smartcase = true
	opt.hlsearch = true
	opt.incsearch = true

	opt.tabstop = 4
	opt.shiftwidth = 4
	opt.softtabstop = 4

	opt.swapfile = false -- Disable swap file
	opt.clipboard = "unnamedplus" -- Use system clipboard
end

return opts
