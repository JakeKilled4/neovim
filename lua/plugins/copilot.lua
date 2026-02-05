return {
  "zbirenbaum/copilot.lua",
  requires = {
    "copilotlsp-nvim/copilot-lsp", -- (optional) for NES functionality
  },
  cmd = "Copilot",
  event ='InsertEnter',
  build = ":Copilot auth",
  opts = {
    suggestion = {enabled = false},
    panel = {enabled = false}
  }
  --opts = {
  --  suggestion = {
  --    enabled = not vim.g.ai_cmp,
  --    auto_trigger = true,
  --    hide_during_completion = vim.g.ai_cmp,
  --    keymap = {
  --      -- Control + Space para aceptar sugerencia
  --      accept = false,
  --      next = "<C->",
  --      prev = "<M-[>",
  --    },
  --  },
  --  panel = { enabled = false },
  --  filetypes = {
  --    markdown = true,
  --    help = true,
  --  },
  --},
}
