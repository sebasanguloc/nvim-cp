local map = vim.keymap.set

map('n', '<leader>w', ':w<CR>', {desc = "Guardar Archivo"})
map('n', '<leader>q', ':q<CR>', {desc = "Salir de archivo"})
map('n', '<leader>m', ':NvimTreeToggle<CR>')



-- Keymap para ejecutar el archivo C++ en Alacritty
vim.api.nvim_set_keymap('n', '<leader>r', ':lua RunCppCodeInAlacritty()<CR>', { noremap = true, silent = true })

-- Función para compilar y ejecutar el archivo C++
function _G.RunCppCodeInAlacritty()
    -- Guardar el archivo actual
    vim.cmd('write')

    -- Obtener el nombre del archivo actual sin extensión
    local file = vim.fn.expand('%:p')
    local filename = vim.fn.expand('%:r')

    -- Comando para compilar el archivo con clang
    local compile_command = 'clang++ -std=c++20 -O2 -Wall ' .. file .. ' -o ' .. filename

    -- Comando para ejecutar el archivo compilado en Alacritty
    local run_command = 'alacritty -e sh -c "./' .. filename .. '; echo; read -p \'Presiona ENTER para continuar...\'; exit"'

    -- Ejecutar el comando de compilación
    os.execute(compile_command)

    -- Ejecutar el comando para abrir Alacritty y ejecutar el archivo
    os.execute(run_command)
end

