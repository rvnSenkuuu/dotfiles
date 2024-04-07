return {
	{
    "Diogo-ss/42-header.nvim",
    lazy = false,
    config = function()
        local header = require("42header")
        header.setup({
            default_map = true, -- default Mapping <F1> in normal mode
            auto_update = true,  -- update header when saving
            user = "tkara2", -- your user
            mail = "tkara2@student.42.fr", -- your mail
        })
    end
}
}
