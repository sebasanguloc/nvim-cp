return {
    "akinsho/toggleterm.nvim",
    config = function()
        require("toggleterm").setup({
        size = 20,
        open_mapping = [[<c-\>]],
        direction = 'horizontal',
        close_on_exit = true,
        })
   end
}
