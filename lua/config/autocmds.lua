-- Tabulaciones a 4 espacios cuando entramos a un fichero .py
vim.api.nvim_create_autocmd("BufEnter", {
   pattern = { "*.py" },
   callback = function()
      vim.opt.shiftwidth = 4
      vim.opt.tabstop = 4
      vim.opt.softtabstop = 4
   end
})



