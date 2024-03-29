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
    -- Equalize all window panes
    ["<leader>eq"] = { ":new | q<CR>", "Equal size all window panes open." },
    -- Resize panes
    ["<leader>h"] = { "5<C-w>+", "Reaize up." },
    ["<leader>j"] = { "5<C-w>-", "Resize down." },
    ["<leader>k"] = { "5<C-w>>", "Resize right." },
    ["<leader>l"] = { "5<C-w><", "Resize left." },

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

    ["<leader>ge"] = { ":lua vim.diagnostic.goto_next()<CR>", "Jump to next error in file" },
    ["<leader>gp"] = { ":lua vim.diagnostic.goto_prev()<CR>", "Jump to previous error in file" },
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
