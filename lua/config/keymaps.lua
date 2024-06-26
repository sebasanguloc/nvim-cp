local map = vim.keymap.set

map('n', '<leader>w', ':w<CR>', {desc = "Guardar Archivo"})
map('n', '<leader>q', ':q<CR>', {desc = "Salir de archivo"})
map('n', '<leader>m', ':NvimTreeToggle<CR>')



