-- Define tecla líder
vim.g.mapleader = ' '


-- Modos
-- 'n' normal
-- 'i' inserta
-- 'x' visual
-- 's' selección
-- 'v' visual y selección
-- 't' terminal
-- 'o' espera de operador
-- '' equivalente a 'n' + 'v' + 'o'

local mappings = {

-- Navegar entre los buffers
  {"n", "<leader>h", "<cmd>bp<cr>"},
  {'n', '<leader>l','<cmd>bn<cr>'},

-- Cerrar un buffer
  {'n', '<leader>d','<cmd>bd<cr>'},

-- Limpiar búsqueda
  {'n', '<leader><space>','<cmd>noh<cr>'},

-- Deshabilita las flechas
  {'', '<up>', '<nop>'},
  {'', '<down>', '<nop>'},
  {'', '<left>', '<nop>'},
  {'', '<right>', '<nop>'},

-- Habilita las flechas con ctrl
  {'i', '<C-h>', '<left>'},
  {'i', '<C-j>', '<down>'},
  {'i', '<C-k>', '<up>'},
  {'i', '<C-l>', '<right>'},

  -- switch between windows
  {"n", "<C-h>", "<C-w>h"},
  {"n", "<C-l>", "<C-w>l"},
  {"n", "<C-j>", "<C-w>j"},
  {"n", "<C-k>", "<C-w>k"},

  -- Buffer nuevo
  {"n", "<leader>b", "<cmd> enew <CR>"},

  -- toggle tree
  {"n", "<F3>", "<cmd> NvimTreeToggle <CR>"},

  -- Mantener el modo visual para desplazar
  {'v', '<', '<gv'},
  {'v', '>', '>gv'},

  -- Saltar al siguiente o anterior error gramatical
  {"n", "<leader>n", "]s"},
  {"n", "<leader>N", "[s"},

  -- Activar/Desactivar corrector ortográfico
  {"n", "<F2>", "<cmd> :set spell! <CR>"},

  -- Compilar latex
  {"n", "<F4>", "<cmd> :VimtexCompile <CR>"},
}

-- Para cerrar o guardar fácilmente
vim.cmd([[
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall
]])

-- Opciones por defecto para todos los mappings
local default_ops = {noremap = true, silent = true}

-- Función para activar los mapeos
local function setKeymap(maps)
  for _, map in pairs(maps) do
    vim.keymap.set(tostring(map[1]), tostring(map[2]), tostring(map[3]), default_ops)
  end
end

-- Llamada a la función
setKeymap(mappings)
