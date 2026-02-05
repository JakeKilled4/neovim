-- Para buscar archivos y patrones
return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
    "nvim-telescope/telescope-ui-select.nvim"
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")
    require("telescope").load_extension("ui-select")

    telescope.setup({
      defaults = {
        path_display = { "truncate " },
        mappings = {
          i = {
            -- Cuando esta en modo insertar
            ["<C-k>"] = actions.move_selection_previous, -- move to prev result
            ["<C-j>"] = actions.move_selection_next, -- move to next result
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
          },
        },
      },
    })


    telescope.load_extension("fzf")
    telescope.load_extension("ui-select")

    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<leader>e", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
    keymap.set("n", "<leader>s", "<cmd>Telescope live_grep<cr>", { desc = "Search for a string in the current directory" })
    keymap.set("n", "<leader>y", "<cmd>Telescope command_history<cr>", { desc = "Search in history" })
    keymap.set("n", "<leader>w", "<cmd>Telescope spell_suggest<cr>", { desc = "Spell suggestion" })
    keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
    keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
  end,

}
