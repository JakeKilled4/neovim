
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = 'a'
vim.opt.ignorecase = true  -- Ignora las mayúsculas en las búsquedas
vim.opt.smartcase = true   -- En las búsquedas ignora las mayúsculas salvo si el termino tiene una.
vim.opt.hlsearch = true   -- Resalta los resultados de una búsqueda anterior
vim.opt.wrap = true 	     -- Hace que el texto de lineas largas siempre este visible
vim.opt.breakindent = true -- Conserva la indentación de las líneas que sólo son visibles cuando wrap es true.

-- Nivel de indentancion
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2

-- Convierte tabuladores a espacios
vim.opt.expandtab = true

-- Configurar para que el portapapeles sea el del pc
vim.opt.clipboard:append { 'unnamed', 'unnamedplus' }

-- Marca la linea en la que se encuentra el cursor
vim.opt.cursorline = true

-- Activa siempre la columna donde están los errores
vim.o.signcolumn = "yes"

-- Columna en el 79
--vim.api.nvim_set_option_value("colorcolumn", "79", {})

-- Recuerda la ultima posición en la que se abrió este archivo
vim.cmd([[
augroup vimrc-remember-cursor-position
  autocmd!
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END
]])

-- Spelling
vim.opt.spelllang = 'en,es'
vim.opt.spell = false

vim.g.mkdp_auto_start = 1           -- Abre directamente el markdowm
vim.g.mkdp_browser = 'qutebrowser'  -- Navegador donde se abre
vim.g.mkdp_theme = 'dark'           -- Color


