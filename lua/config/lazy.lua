-- Seguir este tutorial:
-- https://github.com/josean-dev/dev-environment-files/tree/main/.config/nvim/lua/josean
-- Instala lazy.nvim para manejar plugins
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
   vim.fn.system({
      "git",
      "clone",
      "--filter=blob:none",
      "https://github.com/folke/lazy.nvim.git",
      "--branch=stable", -- latest stable release
      lazypath,
   })
end
vim.opt.rtp:prepend(lazypath)


-- load plugins
require("lazy").setup({{import = "plugins"}, {import = "plugins.lsp"}})


