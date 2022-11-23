local M = {}

M.nvim = {
  n = {
    ["<C-Down>"] = { "<cmd> :m +1 <CR>", "Move line down" },
    ["<C-Up>"] = { "<cmd> :m -2 <CR>", "Move line up" },
    ["<leader>h"] = { "<cmd>nohlsearch<cr>", desc = "No Highlight" },
    -- ["<leader>r"] = { ":%s///gI<left><left><left>" , "Replace selected" },
    ["<SPACE>t"] = { "<cmd> :Telescope live_grep <CR>", "Find text" },
    ["<SPACE>f"] = { "<cmd> :Telescope find_files <CR>", "Find files" },
    ["<SPACE>e"] = { "<cmd>Neotree toggle<cr>", desc = "Toggle Explorer" },

    -- Save
    ['<SPACE>w'] = { ':update<cr>', "Save file" },
    ['<C-S>'] = { ':update<cr>', "Save file" },

    -- Quit
    ["<SPACE>q"] = { "<cmd>q<cr>", "Quit" },

    -- ["<leader>f"] = { "<cmd> :lua vim.lsp.buf.format() <CR>", "lsp formatting" }
  },
  i = {
    ["<S-Tab>"] = { "<C-d>", "Untab" }
  }
}

return M
