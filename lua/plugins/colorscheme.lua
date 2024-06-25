return {
	"wuelnerdotexe/vim-enfocado",
    {
    "luisiacc/gruvbox-baby",
	lazy = false,
	priority = 1000,
	config = function()
        vim.g.gruvbox_baby_background_color = "medium"
		vim.cmd([[colorscheme gruvbox-baby]])
	end,
    },
    "sainnhe/gruvbox-material",
}
