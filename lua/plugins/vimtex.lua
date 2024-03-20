return {
  "lervag/vimtex",
  lazy = false, -- lazy-loading will disable inverse search
  config = function()
    vim.api.nvim_create_autocmd({ "FileType" }, {
      group = vim.api.nvim_create_augroup("lazyvim_vimtex_conceal", { clear = true }),
      pattern = { "bib", "tex" },
      callback = function()
        vim.wo.conceallevel = 0
      end,
    })

    -- Compilador
    vim.g.vimtex_compiler_method = "latexmk"

    -- Color de fondo del QuickFixLine
    vim.cmd([[hi QuickFixLine guibg=#504945 ]])

    --vim.g.vimtex_mappings_disable = { ["n"] = { "K" } } -- disable `K` as it conflicts with LSP hover
    -- Ver esta opcion para el futuro
    --vim.g.vimtex_quickfix_method = vim.fn.executable("pplatex") == 1 and "pplatex" or "latexlog"
    -- Limpia al salir
    vim.cmd([[autocmd User VimtexEventQuit !latexmk -c]])
  end,

}
