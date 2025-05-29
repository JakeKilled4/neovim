-- Para mostrar iconos en ciertas interfaces
return {
  "echasnovski/mini.nvim",
  version = "*",
  config = function()
    require("mini.icons").setup()  -- Asegúrate de tener esta línea
  end
}
