return {
  'folke/trouble.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  opts = {},
  cmd = 'Trouble',
  keys = {
    {
      '<leader>xx',
      '<CMD>Trouble diagnostics toggle<CR>',
      desc = 'Diagnostics (Trouble)',
    },
    {
      "<leader>xX",
      "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
      desc = "Buffer Diagnostics (Trouble)",
    },
    {
      "<leader>cs",
      "<cmd>Trouble symbols toggle focus=false<cr>",
      desc = "Symbols (Trouble)",
    },
    {
      "<leader>cl",
      "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
      desc = "LSP Definitions / references / ... (Trouble)",
    },
    {
      "<leader>xL",
      "<cmd>Trouble loclist toggle<cr>",
      desc = "Location List (Trouble)",
    },
    {
      "<leader>xQ",
      "<cmd>Trouble qflist toggle<cr>",
      desc = "Quickfix List (Trouble)",
    },
  },
  init = function()
    vim.api.nvim_create_autocmd("FileType", {
      pattern = "Trouble",
      callback = function()
        vim.api.nvim_win_set_option(0, "winfixheight", true)
        vim.bo.buflisted = false
      end,
    })
  end,
}
