local M = {}

M.general = {
    -- Normal mode custom mappings
  n = {
    -- switch between windows
    ["<leader>s<left>"] = { "<C-w>h", "window left" },
    ["<leader>s<right>"] = { "<C-w>l", "window right" },
    ["<leader>s<down>"] = { "<C-w>j", "window down" },
    ["<leader>s<up>"] = { "<C-w>k", "window up" },

    -- split windows vertivally & horizontal
    ["sh"] = { ":split<Return><C-w>w", "Split Horizontal" },
    ["sv"] = { ":vsplit<Return><C-w>w", "Split Vertical" },

    -- save
    ["<C-s>"] = { "<cmd> w <CR>", "save file" },

    -- Copy all
    ["<C-c>"] = { "<cmd> %y+ <CR>", "copy whole file" },

    -- Yank till end of linee
    ["Y"] = { "y$", "Yank till end of line" },

    -- Markdown Preview
    ["<C-m>"] = { ":Glow<CR>", "Markdown file preview" },

    -- Jump to start of word at beginning of line
    ["0"] = { "^", "Jump to start of word at beginning of line" },
  },
}

M.nvterm = {
  n = {
    -- toggle floating terminal in normal mode
    ["<leader>ft"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "toggle floating terminal"
    },
  },
}

M.telescope = {
  n = {
    ["<leader>ff"] = { "<cmd> Telescope find_files <CR>", "find files" },
  },
}

M.git = {
  n = {
    ["<leader>gs"] = { "<cmd> Telescope git_status<CR>", "git status" },
    ["<leader>gc"] = { "<cmd> Telescope git_commits<CR>", "git commits" },
  },
}

return M
